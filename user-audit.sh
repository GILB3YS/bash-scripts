#!/bin/bash

# -----------------------------------------------
# 👥 user-audit.sh
# Sistemdeki kullanıcıları listeler.
# Ayrıca sudo yetkisi olan kullanıcıları vurgular.
# -----------------------------------------------

echo "👤 Tüm kullanıcılar:"
cut -d: -f1 /etc/passwd

echo -e "\n🔐 Sudo yetkili kullanıcılar:"
getent group sudo | cut -d: -f4
