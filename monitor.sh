#!/bin/bash

# -----------------------------------------------
# 📈 monitor.sh
# Sistem durumunu gösterir:
# - RAM kullanımı
# - CPU yükü
# - Disk kullanımı
# -----------------------------------------------

echo "🧠 RAM Kullanımı:"
free -h                          # RAM bilgisi

echo -e "\n⚙️ CPU Yükü:"
uptime                           # Load average

echo -e "\n💽 Disk Kullanımı:"
df -h /                          # Disk durumu (root dizini)
