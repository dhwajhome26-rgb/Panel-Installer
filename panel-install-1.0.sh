#!/usr/bin/env bash

clear
echo "================================="
echo "        💻 Panel Installer"
echo "================================="
echo ""
echo "( 1 ) Pterodactyl"
echo "( 2 ) Real VPS"
echo "( 3 ) PufferPanel"

read -p "[ Select Number ]: " choice

# Check root
if [[ $EUID -ne 0 ]]; then
  echo "⚠ Please run this script as root (sudo bash script.sh)"
  exit 1
fi

# ===============================
# OPTION 1 - PANEL INSTALL
# ===============================
if [ "$choice" == "1" ]; then

  echo "🚀 Installing Pterodactyl..."
  bash <(curl -s https://ptero.jishnu.fun)

# ===============================
# OPTION 2 - Real VPS INSTALL
# ===============================
elif [ "$choice" == "2" ]; then

  echo "🚀 Installing Real VPS Setup..."

  echo "📦 Downloading VPS Installer..."
  bash <(curl -fsSL https://raw.githubusercontent.com/Solodactyl/24-7/main/install.sh)

  echo "🔄 Updating system..."
  apt update -y

  echo "📥 Installing neofetch..."
  apt install neofetch -y

  echo ""
  echo "🎊 VPS Installed Successfully."

# ===============================
# OPTION 3 - Puffer INSTALL
# ===============================
elif [ "$choice" == "3" ]; then

echo "🚀 Installing Real VPS Setup..."

  echo "📦 Downloading Puffer Installer..."
  bash <(curl -s https://raw.githubusercontent.com/JishnuTheGamer/puffer-panel/refs/heads/main/install)

  echo "💚 Panel Running"
  sudo systemctl enable --now pufferpanel 

      echo "✅ Panel Started"

  echo "👤 Create Admin..."
  sudo pufferpanel user add
      
else
  echo "❌ Invalid option!"
fi
