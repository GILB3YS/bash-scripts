#!/bin/bash

# -----------------------------------------------
# 🧹 cleaner.sh
# Sistemdeki geçici dosyaları, önbellekleri ve log artıklarını temizler
# -----------------------------------------------

echo "🧹 APT önbelleği temizleniyor..."
sudo apt clean && sudo apt autoclean

echo "🗑️ Geçici dosyalar temizleniyor..."
sudo rm -rf /tmp/*

echo "🧾 logrotate sonrası eski loglar temizleniyor..."
sudo journalctl --vacuum-time=3d

echo "✅ Temizlik tamamlandı."
