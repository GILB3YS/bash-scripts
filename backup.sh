#!/bin/bash

# -----------------------------------------------
# 📦 backup.sh
# Bu script, /home dizinini otomatik olarak .tar.gz formatında yedekler.
# Yedekler, /backups dizinine kaydedilir. Klasör yoksa otomatik oluşturulur.
# Oluşturulan yedek dosyasına, çalıştırıldığı günün tarihi eklenir.
# -----------------------------------------------

# 🗓️ 1. Değişken tanımı: Tarih formatında yedek dosya adı için kullanılır
TARIH=$(date +%Y-%m-%d)

# 📂 2. Yedeklenecek kaynak klasör
KAYNAK="/home"

# 🎯 3. Yedeklerin kaydedileceği hedef klasör
HEDEF="/backups"

# 🗃️ 4. Yedek dosyasının adını oluştur
DOSYA="yedek-$TARIH.tar.gz"

# 📁 5. /backups dizini yoksa oluştur (idempotent işlem – hata vermez)
mkdir -p $HEDEF

# 📦 6. /home klasörünü sıkıştır ve hedefe kaydet
# 'tar' komutu: -c (create), -z (gzip), -v (verbose), -f (file)
tar -czvf $HEDEF/$DOSYA $KAYNAK

# ✅ 7. Başarılı işlem mesajı
echo "Yedekleme tamamlandı: $HEDEF/$DOSYA"
