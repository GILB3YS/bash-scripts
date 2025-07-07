#!/bin/bash

# -----------------------------------------------
# 🌐 ip-check.sh
# Lokal IP ve global IP adreslerini gösterir.
# -----------------------------------------------

echo "🌐 Lokal IP adresiniz:"
ip a | grep inet | grep -v 127.0.0.1 | awk '{print $2}'

echo -e "\n🌍 Global IP adresiniz:"
curl -s https://ifconfig.me
