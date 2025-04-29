from flask import Flask, render_template, request, jsonify, redirect, url_for, session
import mysql.connector
import random
import csv  # CSV yazma işlemi için ekleniyor
import os    # Dosya yolunu doğrulamak için ekleniyor

app = Flask(__name__)
app.secret_key = os.getenv("SECRET_KEY")  # Oturum için gizli anahtar

# Mevcut kodda logların tekrar tekrar yazılmaması için son eklenen LogID'yi takip edecek bir global değişken kullanacağız:
last_appended_log_id = 0

def db_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        database=os.getenv("DB_DATABASE"),
        charset='utf8mb4'
    )

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/index.html")

def index_html():
    return redirect(url_for("index"))  # Ana sayfaya yönlendirme

@app.route("/sorgula", methods=["GET", "POST"])
def sorgula():
    if request.method == "POST":
        kargo_no = request.form.get("kargoNo")
        connection = db_connection()
        cursor = connection.cursor(dictionary=True)
        try:
            # KargoDurumu tablosunu da JOIN ederek DurumID'yi alıyoruz:
            query = """
            SELECT 
                k.KargoTakipNo, 
                k.KargoAgirligi, 
                k.GonderimTarihi, 
                k.TeslimTarihi,
                g.Ad AS GondericiAd, 
                g.Soyad AS GondericiSoyad, 
                g.Adres AS GondericiAdres, 
                g.TelNo AS GondericiTel,
                a.Ad AS AliciAd, 
                a.Soyad AS AliciSoyad, 
                a.Adres AS AliciAdres, 
                a.TelNo AS AliciTel,
                kd.DurumID AS DurumID -- <-- DurumID çekiyoruz
            FROM Kargo k
            LEFT JOIN Gonderici g ON k.GondericiID = g.GondericiID
            LEFT JOIN Alici a ON k.AliciID = a.AliciID
            LEFT JOIN kargoDurumu kd ON k.KargoTakipNo = kd.KargoTakipNo
            WHERE k.KargoTakipNo = %s
            """
            cursor.execute(query, (kargo_no,))
            result = cursor.fetchone()
            cursor.close()
            connection.close()

            if result:
                return jsonify({"success": True, "data": result})
            else:
                return jsonify({"success": False, "message": "Kargo bulunamadı!"})
        except mysql.connector.Error as err:
            return jsonify({"success": False, "message": str(err)})

    return render_template("sorgula.html")

@app.route("/admin-login", methods=["GET", "POST"])
def admin_login():
    if request.method == "POST":
        data = request.json
        username = data.get("username")
        password = data.get("password")

        # Basit kontrol
        if username == "admin" and password == "admin":
            session["logged_in"] = True
            return jsonify({"success": True, "message": "Giriş başarılı!"})
        else:
            return jsonify({"success": False, "message": "Hatalı kullanıcı adı veya şifre!"})
    return render_template("admin_login.html")

@app.route("/admin", methods=["GET", "POST"])
def admin():
    if not session.get("logged_in"):
        return redirect(url_for("admin_login"))

    connection = db_connection()
    cursor = connection.cursor(dictionary=True)

    if request.method == "POST":
        data = request.json
        try:
            # 0) Sadece Yurt İçi olan il-ilçeleri almak için
            if data["action"] == "getIlce":
                il_id = data.get("ilID")
                cursor.execute("""
                    SELECT 
                        ilce_id AS IlceID, 
                        ilce_adi AS IlceAdi 
                    FROM ilce 
                    WHERE il_id = %s
                """, (il_id,))
                ilceler = cursor.fetchall()
                return jsonify({"success": True, "ilceler": ilceler})

            # 0.1) Yurt Dışı - Ülkeleri almak için
            elif data["action"] == "getCountries":
                cursor.execute("""
                    SELECT 
                        yurtdisiUlkeID,
                        yurtdisiUlkeAdi
                    FROM yurtdisiUlkeler
                """)
                countries = cursor.fetchall()
                return jsonify({"success": True, "countries": countries})

            # 0.2) Yurt Dışı - Şehirleri almak için
            elif data["action"] == "getForeignCities":
                ulke_id = data.get("ulkeID")
                cursor.execute("""
                    SELECT 
                        yurtdisiSehirID, 
                        yurtdisiSehirAdi
                    FROM yurtDisiSehirler
                    WHERE yurtdisiUlkeID = %s
                """, (ulke_id,))
                cities = cursor.fetchall()
                return jsonify({"success": True, "cities": cities})

            # 1) Rastgele kargo çalışanı getiren işlem
            elif data["action"] == "fetchRandomCalisan":
                cursor.execute("SELECT KargoCalisaniID, TamAd FROM kargocalisani ORDER BY RAND() LIMIT 1")
                calisan = cursor.fetchone()
                return jsonify(calisan)

            # 2) Kargo Ekle
            elif data["action"] == "add":
                # Gönderici ekle
                gonderici_query = """
                INSERT INTO Gonderici (Ad, Soyad, Adres, TelNo)
                VALUES (%s, %s, %s, %s)
                """
                cursor.execute(
                    gonderici_query,
                    (
                        data.get("gondericiAd"),
                        data.get("gondericiSoyad"),
                        data.get("gondericiAdres"),
                        data.get("gondericiTel")
                    )
                )
                gonderici_id = cursor.lastrowid

                # Alıcı ekle
                alici_query = """
                INSERT INTO Alici (Ad, Soyad, Adres, TelNo)
                VALUES (%s, %s, %s, %s)
                """
                cursor.execute(
                    alici_query,
                    (
                        data.get("aliciAd"),
                        data.get("aliciSoyad"),
                        data.get("aliciAdres"),
                        data.get("aliciTel")
                    )
                )
                alici_id = cursor.lastrowid

                calisan_id = data.get("calisanId")
                kargo_turu = data.get("kargoTuru")
                durum_id = data.get("durumId")  # Kullanıcı ekleme sırasında durum seçebilsin
                if not durum_id:
                    durum_id = 1  # Varsayılan: "Kargo Hazırlanıyor"

                # Burada durumId -> metin eşleşmesini yapıyoruz:
                durum_map = {
                    "1": "Kargo Hazırlanıyor",
                    "2": "Kargo Yolda",
                    "3": "Kargo Teslim Edildi"
                }
                durum_text = durum_map.get(str(durum_id), "Bilinmiyor")

                # Eğer Yurt İçi ise il/ilçe, Yurt Dışı ise ulke/sehir
                if kargo_turu == "YI":
                    il_id = data.get("ilID")
                    ilce_id = data.get("ilceID")

                    cursor.execute("SELECT il_adi FROM il WHERE il_id = %s", (il_id,))
                    il_row = cursor.fetchone()
                    kargo_il_adi = il_row["il_adi"] if il_row else None

                    cursor.execute("SELECT ilce_adi FROM ilce WHERE ilce_id = %s", (ilce_id,))
                    ilce_row = cursor.fetchone()
                    kargo_ilce_adi = ilce_row["ilce_adi"] if ilce_row else None

                    insert_kargo = """
                    INSERT INTO Kargo 
                        (KargoTakipNo, KargoTuru, KargoSirketiID,
                         KargoAgirligi, GonderimTarihi, TeslimTarihi,
                         KargoIlID, KargoIlceID, KargoIl, KargoIlce,
                         PostaKodu, Adres, GondericiID, AliciID, ödemeTutarı, KargoCalisaniID,
                         DurumID)
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    """
                    cursor.execute(
                        insert_kargo,
                        (
                            data.get("kargoTakipNo"),
                            kargo_turu,
                            data.get("kargoSirketiID"),
                            data.get("kargoAgirligi"),
                            data.get("gonderimTarihi"),
                            data.get("teslimTarihi"),
                            il_id,
                            ilce_id,
                            kargo_il_adi,
                            kargo_ilce_adi,
                            data.get("postaKodu"),
                            data.get("aliciAdres"),
                            gonderici_id,
                            alici_id,
                            data.get("odemeTutari"),
                            calisan_id,
                            durum_id
                        )
                    )

                else:  # Yurt Dışı
                    ulke_id = data.get("ilID")
                    sehir_id = data.get("ilceID")

                    cursor.execute("SELECT yurtdisiUlkeAdi FROM yurtdisiUlkeler WHERE yurtdisiUlkeID = %s", (ulke_id,))
                    ulke_row = cursor.fetchone()
                    kargo_ulke_adi = ulke_row["yurtdisiUlkeAdi"] if ulke_row else None

                    cursor.execute("SELECT yurtdisiSehirAdi FROM yurtDisiSehirler WHERE yurtdisiSehirID = %s",
                                   (sehir_id,))
                    sehir_row = cursor.fetchone()
                    kargo_sehir_adi = sehir_row["yurtdisiSehirAdi"] if sehir_row else None

                    insert_kargo = """
                    INSERT INTO Kargo
                        (KargoTakipNo, KargoTuru, KargoSirketiID,
                         KargoAgirligi, GonderimTarihi, TeslimTarihi,
                         KargoIlID, KargoIlceID, KargoIl, KargoIlce,
                         PostaKodu, Adres, GondericiID, AliciID, ödemeTutarı, KargoCalisaniID,
                         DurumID)
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    """
                    cursor.execute(
                        insert_kargo,
                        (
                            data.get("kargoTakipNo"),
                            kargo_turu,
                            data.get("kargoSirketiID"),
                            data.get("kargoAgirligi"),
                            data.get("gonderimTarihi"),
                            data.get("teslimTarihi"),
                            ulke_id,
                            sehir_id,
                            kargo_ulke_adi,
                            kargo_sehir_adi,
                            data.get("postaKodu"),
                            data.get("aliciAdres"),
                            gonderici_id,
                            alici_id,
                            data.get("odemeTutari"),
                            calisan_id,
                            durum_id
                        )
                    )

                insert_kargodurumu = """
                INSERT INTO kargoDurumu (KargoTakipNo, DurumID, Durum, GuncellemeZamani)
                VALUES (%s, %s, %s, NOW())
                """
                cursor.execute(insert_kargodurumu, (data.get("kargoTakipNo"), durum_id, durum_text))

                connection.commit()
                export_logs_to_txt()

                return jsonify({"success": True, "message": "Kargo başarıyla eklendi!"})

            # 3) Kargo bilgisi getir (güncelleme öncesi)
            elif data["action"] == "getKargo":
                kargoTakipNo = data.get("kargoTakipNo")
                get_query = """
                SELECT 
                    k.KargoTakipNo,
                    k.KargoTuru,
                    k.KargoAgirligi,
                    k.GonderimTarihi,
                    k.TeslimTarihi,
                    k.KargoIlID,
                    k.KargoIlceID,
                    k.KargoIl,
                    k.KargoIlce,
                    k.PostaKodu,
                    k.Adres,
                    k.ödemeTutarı,
                    k.KargoCalisaniID,
                    k.DurumID,  -- DurumID'yi çekiyoruz
                    g.Ad AS GondericiAd, 
                    g.Soyad AS GondericiSoyad,
                    g.Adres AS GondericiAdres,
                    g.TelNo AS GondericiTel,
                    a.Ad AS AliciAd,
                    a.Soyad AS AliciSoyad,
                    a.Adres AS AliciAdres,
                    a.TelNo AS AliciTel,
                    c.TamAd AS KargoCalisaniAdi
                FROM Kargo k
                LEFT JOIN Gonderici g ON k.GondericiID = g.GondericiID
                LEFT JOIN Alici a ON k.AliciID = a.AliciID
                LEFT JOIN kargocalisani c ON k.KargoCalisaniID = c.KargoCalisaniID
                WHERE k.KargoTakipNo = %s
                """
                cursor.execute(get_query, (kargoTakipNo,))
                result = cursor.fetchone()
                if result:
                    return jsonify({"success": True, "kargo": result})
                else:
                    return jsonify({"success": False, "message": "Kargo bulunamadı!"})

            # 4) Kargo Güncelle
            elif data["action"] == "update":
                kargoTakipNo = data.get("kargoTakipNo")
                cursor.execute("SELECT GondericiID, AliciID FROM Kargo WHERE KargoTakipNo = %s", (kargoTakipNo,))
                row = cursor.fetchone()
                if not row:
                    return jsonify({"success": False, "message": "Kargo bulunamadı!"})

                gonderici_id = row["GondericiID"]
                alici_id = row["AliciID"]

                update_gonderici = """
                UPDATE Gonderici
                SET Ad = %s, Soyad = %s, Adres = %s, TelNo = %s
                WHERE GondericiID = %s
                """
                cursor.execute(
                    update_gonderici,
                    (
                        data.get("gondericiAd"),
                        data.get("gondericiSoyad"),
                        data.get("gondericiAdres"),
                        data.get("gondericiTel"),
                        gonderici_id
                    )
                )

                update_alici = """
                UPDATE Alici
                SET Ad = %s, Soyad = %s, Adres = %s, TelNo = %s
                WHERE AliciID = %s
                """
                cursor.execute(
                    update_alici,
                    (
                        data.get("aliciAd"),
                        data.get("aliciSoyad"),
                        data.get("aliciAdres"),
                        data.get("aliciTel"),
                        alici_id
                    )
                )

                calisan_id = data.get("calisanId")
                kargo_turu = data.get("kargoTuru")
                durum_id = data.get("durumId")

                durum_map = {
                    "1": "Kargo Hazırlanıyor",
                    "2": "Kargo Yolda",
                    "3": "Kargo Teslim Edildi"
                }
                durum_text = durum_map.get(str(durum_id), "Bilinmiyor")

                if kargo_turu == "YI":
                    il_id = data.get("ilID")
                    ilce_id = data.get("ilceID")

                    cursor.execute("SELECT il_adi FROM il WHERE il_id = %s", (il_id,))
                    il_row = cursor.fetchone()
                    kargo_il_adi = il_row["il_adi"] if il_row else None

                    cursor.execute("SELECT ilce_adi FROM ilce WHERE ilce_id = %s", (ilce_id,))
                    ilce_row = cursor.fetchone()
                    kargo_ilce_adi = ilce_row["ilce_adi"] if ilce_row else None

                else:  # Yurt Dışı
                    ulke_id = data.get("ilID")
                    sehir_id = data.get("ilceID")

                    cursor.execute("SELECT yurtdisiUlkeAdi FROM yurtdisiUlkeler WHERE yurtdisiUlkeID = %s", (ulke_id,))
                    ulke_row = cursor.fetchone()
                    kargo_il_adi = ulke_row["yurtdisiUlkeAdi"] if ulke_row else None

                    cursor.execute("SELECT yurtdisiSehirAdi FROM yurtDisiSehirler WHERE yurtdisiSehirID = %s",
                                   (sehir_id,))
                    sehir_row = cursor.fetchone()
                    kargo_ilce_adi = sehir_row["yurtdisiSehirAdi"] if sehir_row else None

                update_kargo = """
                UPDATE Kargo
                SET 
                    KargoAgirligi   = %s,
                    GonderimTarihi  = %s,
                    TeslimTarihi    = %s,
                    KargoIlID       = %s,
                    KargoIlceID     = %s,
                    KargoIl         = %s,
                    KargoIlce       = %s,
                    PostaKodu       = %s,
                    Adres           = %s,
                    ödemeTutarı     = %s,
                    KargoCalisaniID = %s,
                    DurumID         = %s
                WHERE KargoTakipNo = %s
                """
                if kargo_turu == "YI":
                    il_val = data.get("ilID")
                    ilce_val = data.get("ilceID")
                else:
                    il_val = data.get("ilID")
                    ilce_val = data.get("ilceID")

                cursor.execute(
                    update_kargo,
                    (
                        data.get("kargoAgirligi"),
                        data.get("gonderimTarihi"),
                        data.get("teslimTarihi"),
                        il_val,
                        ilce_val,
                        kargo_il_adi,
                        kargo_ilce_adi,
                        data.get("postaKodu"),
                        data.get("aliciAdres"),
                        data.get("odemeTutari"),
                        calisan_id,
                        durum_id,
                        kargoTakipNo
                    )
                )

                export_logs_to_txt()

                update_kargodurumu = """
                UPDATE kargoDurumu
                SET DurumID = %s,
                    Durum = %s,
                    GuncellemeZamani = NOW()
                WHERE KargoTakipNo = %s
                """
                cursor.execute(update_kargodurumu, (durum_id, durum_text, kargoTakipNo))

                export_logs_to_txt()
                connection.commit()
                return jsonify({"success": True, "message": "Kargo başarıyla güncellendi!"})

            # 5) Silme işlemi
            elif data["action"] == "delete":
                kargoTakipNo = data.get("kargoTakipNo")
                cursor.execute("SELECT KargoID FROM Kargo WHERE KargoTakipNo = %s", (kargoTakipNo,))
                existing = cursor.fetchone()
                if not existing:
                    return jsonify({"success": False, "message": "Silinecek kargo bulunamadı!"})

                cursor.execute("SELECT GondericiID, AliciID FROM Kargo WHERE KargoTakipNo = %s", (kargoTakipNo,))
                kargo_data = cursor.fetchone()

                cursor.execute("DELETE FROM kargoDurumu WHERE KargoTakipNo = %s", (kargoTakipNo,))
                cursor.execute("DELETE FROM Kargo WHERE KargoTakipNo = %s", (kargoTakipNo,))

                export_logs_to_txt()
                connection.commit()
                return jsonify({"success": True, "message": "Kargo başarıyla silindi!"})

            # 6) Rapor Oluşturma
            elif data["action"] == "create_report":
                try:
                    # 'kargodetay' view'ından tüm verileri çek
                    cursor.execute("""
                        SELECT 
                            KargoID, 
                            KargoTakipNo, 
                            KargoTuru, 
                            KargoAgirligi, 
                            GonderimTarihi, 
                            TeslimTarihi, 
                            Gonderici, 
                            Alici, 
                            KargoIl, 
                            KargoIlce, 
                            Adres, 
                            PostaKodu, 
                            ödemeTutarı, 
                            KargoDurumu 
                        FROM kargodetayı
                    """)
                    rows = cursor.fetchall()

                    # CSV dosyasının kaydedileceği yol
                    csv_path = r'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\rapor.csv'

                    # CSV dosyasının bulunduğu dizinin var olup olmadığını kontrol et
                    csv_dir = os.path.dirname(csv_path)
                    if not os.path.exists(csv_dir):
                        return jsonify({"success": False, "message": "CSV dosyasının kaydedileceği dizin bulunamadı!"})

                    # CSV dosyasını yazma işlemi
                    with open(csv_path, mode='w', newline='', encoding='utf-8-sig') as csv_file:
                        writer = csv.writer(csv_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

                        # Belirtilen başlıkları yazma
                        headers = ["KargoID", "KargoTakipNo", "KargoTuru", "KargoAgirligi", "GonderimTarihi",
                                   "TeslimTarihi", "Gonderici", "Alici", "KargoIl", "KargoIlce",
                                   "Adres", "PostaKodu", "ödemeTutarı", "KargoDurumu"]
                        writer.writerow(headers)

                        # Verileri yazma
                        for row in rows:
                            writer.writerow([
                                row.get("KargoID", ""),
                                row.get("KargoTakipNo", ""),
                                row.get("KargoTuru", ""),
                                row.get("KargoAgirligi", ""),
                                row.get("GonderimTarihi", ""),
                                row.get("TeslimTarihi", ""),
                                row.get("Gonderici", ""),
                                row.get("Alici", ""),
                                row.get("KargoIl", ""),
                                row.get("KargoIlce", ""),
                                row.get("Adres", ""),
                                row.get("PostaKodu", ""),
                                row.get("ödemeTutarı", ""),
                                row.get("KargoDurumu", "")
                            ])

                    return jsonify({"success": True, "message": "Rapor başarıyla oluşturuldu!"})
                except Exception as e:
                    return jsonify({"success": False, "message": f"Rapor oluşturulurken hata oluştu: {str(e)}"})

        except mysql.connector.Error as err:
            return jsonify({"success": False, "message": str(err)})
        finally:
            cursor.close()
            connection.close()

    # GET isteği ile admin sayfası yüklendiğinde...
    cursor.execute("""
        SELECT
            k.KargoTakipNo,
            k.KargoAgirligi,
            k.GonderimTarihi,
            k.TeslimTarihi,
            k.PostaKodu,
            k.Adres AS AliciAdres,
            k.KargoTuru,
            k.KargoIl  AS Il,
            k.KargoIlce AS Ilce
        FROM Kargo k
    """)
    kargolar = cursor.fetchall()

    cursor.execute("SELECT il_id AS IlID, il_adi AS IlAdi FROM il")
    iller = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template("admin.html", kargolar=kargolar, iller=iller)

def export_logs_to_txt():
    """
    KargoLog tablosundan sadece son eklenen kayıtları 'log.txt' dosyasına
    ekleyen fonksiyon. Böylece daha önce yazılmış loglar tekrar tekrar eklenmez.
    """
    global last_appended_log_id  # Bu değişken en son hangi LogID'ye kadar dosyaya yazdığımızı tutar.

    connection = db_connection()
    cursor = connection.cursor()

    # Sadece henüz dosyaya yazılmamış (LogID'si last_appended_log_id'den büyük olan) kayıtları alalım:
    cursor.execute("SELECT LogID, LogText FROM KargoLog WHERE LogID > %s ORDER BY LogID", (last_appended_log_id,))
    rows = cursor.fetchall()

    if rows:
        with open("log.txt", "a", encoding="utf-8") as f:
            for row in rows:
                f.write(row[1] + "\n")
            # Son eklenen kaydın LogID'sini güncelliyoruz:
            last_appended_log_id = rows[-1][0]

    cursor.close()
    connection.close()

@app.route("/logout")
def logout():
    session.pop("logged_in", None)
    return redirect(url_for("admin_login"))

if __name__ == "__main__":
    app.run(debug=True)
