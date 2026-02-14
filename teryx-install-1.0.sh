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
echo -e "${MAGENTA}        🦖 Teryx Installer ${WHITE}By HopingBOY${NC}"
echo -e "${CYAN}==================================================${NC}"
echo ""
echo -e "${GREEN}( 1 ) ${YELLOW}TeryxPanel${NC}"
echo -e "${GREEN}( 2 ) ${YELLOW}Daemon${NC}"
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

  echo "🚀 Installing TeryxPanel..."

  echo "📦 Git Clone v4panel..."
  git clone https://github.com/teryxlabs/v4panel

  echo "💻 Installing Deb Node Source SetUP..."
  curl -sL https://deb.nodesource.com/setup_23.x | sudo bash -

  echo "💻 APT-Get Install NodeJs Git..."
  apt-get install nodejs git && mkdir -p v4panel && cd v4panel

  echo "💻 CD V4PANEL..."
  cd v4panel

  echo "📦 Unzip Panel.Zip..."
  apt install zip -y && unzip panel.zip

  echo "🚀 Panel Is Starting..."
  node .
 
  echo "👤 Wait For CreateUser Admin..."

  echo "👤 CreateUser Admin Code Running Wait For Create... Write node . For Start Panel "
  npm install && npm run seed && npm run createUser

  echo -e "🚀 Write ${GREEN}cd v4panel${NC} and ${GREEN}node .${NC} For Start Panel"

# ===============================
# OPTION 2 - Daemon INSTALL
# ===============================
elif [ "$choice" == "2" ]; then

  echo "🚀 Installing Daemon Setup..."

  echo "📦 Downloading VPS Installer..."
  git clone https://github.com/dragonlabsdev/daemon

  echo "🔄 CD Daemon..."
  cd daemon

  echo "📥 Unzip Daemon.Zip..."
  apt install zip -y && unzip daemon.zip && cd daemon

  echo "📥 NPM Installing..."
  npm install

  echo -e "${GREEN}📥 Paste Your Node Configration...${NC}"
  cd daemon

  echo ""
  echo -e "${GREEN}📥 cd daemon...${NC}"
  cd daemon

else
  echo "❌ Invalid option!"
fi