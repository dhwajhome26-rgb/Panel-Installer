#!/usr/bin/env bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

clear
echo -e "${CYAN}==================================================${NC}"
echo -e "${MAGENTA}        💻 Panel Installer ${WHITE}By DhwaJ_XD${NC}"
echo -e "${CYAN}==================================================${NC}"
echo ""
echo -e "${GREEN}( 1 ) ${YELLOW}Pterodactyl${NC}"

echo -e "${GREEN}( 2 ) ${YELLOW}Real VPS${NC}"

echo -e "${GREEN}( 3 ) ${YELLOW}PufferPanel${NC}"

echo -e "${GREEN}( 4 ) ${YELLOW}TeryxPanel${NC}"

echo -e "${GREEN}( 5 ) ${YELLOW}FeatherPanel${NC}"

echo -e "${GREEN}( 6 ) ${YELLOW}SolarPanel${NC}"

echo -e "${GREEN}( 7 ) ${YELLOW}VM-Manager${NC}"
echo ""
read -p "$(echo -e ${BLUE}[ Select Number ]:${NC} )" choice

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

  echo "📦 Opening Main Menu [ Jishnu ]..."
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

echo "🚀 Installing Puffer Setup..."

  echo "📦 Downloading Puffer Installer..."
  bash <(curl -s https://raw.githubusercontent.com/JishnuTheGamer/puffer-panel/refs/heads/main/install)

  echo "💚 Panel Running , 👤 Ctrl+C For Create Admin Account"
  sudo systemctl enable --now pufferpanel 

      echo "✅ Panel Started"

  echo "👤 Create Admin..."
  sudo pufferpanel user add

# ===============================
# OPTION 4 - TERYX MENU
# ===============================
elif [ "$choice" == "4" ]; then

  echo "🚀 Opening Main Menu..."
  echo "📦 Main Menu..."
  bash teryx-install-1.0.sh

# ===============================
# OPTION 1 - Feather INSTALL
# ===============================
elif [ "$choice" == "5" ]; then

  echo "🚀 FeatherPanel SetUP / Main Menu..."

  echo "📦 Premium Panel [ VPS Requird, Checking... ]"
  curl -sSL https://get.featherpanel.com/installer.sh | bash

echo "🚀 Panel Installer Is Running..."

# ===============================
# Best Option - SolarPanel
# ===============================
elif [ "$choice" == "6" ]; then

  echo "🚀 SolarPanel By DhwaJXD [ Credit: HopingBOY / TeryxPanel... ]"

  echo "📦 Premium Panel [ Sending GitHub Repo Link... ]"
  
  echo -e "🚀 SolarPanel Link Is Here: ${GREEN}https://github.com/dhwajhome26-rgb/SolarPanel${WHITE}"

  echo "🚀 Panel Installer Is Running..."

# ===============================
# OPTION 7 - VM Manager
# ===============================
elif [ "$choice" == "7" ]; then

  echo "🚀 VM Manager GIT REPO... ]"

  echo -e "🚀 VM-Manager Link Is Here: ${GREEN}https://github.com/dhwajhome26-rgb/VM-Manager${WHITE}"

fi
