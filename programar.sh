#!/bin/bash

# ===== Colors =====
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

open_link() {
    termux-open-url "$1"
}

logo() {
clear
echo -e "${RED}"
echo " ███████╗██╗  ██╗    ██████╗ ███╗   ██╗███████╗"
echo " ██╔════╝██║  ██║   ██╔═══██╗████╗  ██║██╔════╝"
echo " █████╗  ███████║   ██║   ██║██╔██╗ ██║█████╗  "
echo " ██╔══╝  ██╔══██║   ██║   ██║██║╚██╗██║██╔══╝  "
echo " ███████╗██║  ██║██╗╚██████╔╝██║ ╚████║███████╗"
echo " ╚══════╝╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝"
echo -e "${NC}"
echo -e "${CYAN}        >> EH INFORMATION TOOL <<${NC}"
echo
}

while true
do
logo
echo -e "${YELLOW}[1]${WHITE} Facebook"
echo -e "${YELLOW}[2]${WHITE} YouTube"
echo -e "${YELLOW}[3]${WHITE} Telegram"
echo -e "${RED}[0] Exit${NC}"
echo
read -p ">> Select Option: " choice

case $choice in
1)
    echo -e "${GREEN}Opening Facebook...${NC}"
    sleep 1
    open_link "https://www.facebook.com/share/1BtECqaJ36/"
    ;;
2)
    echo -e "${GREEN}Opening YouTube...${NC}"
    sleep 1
    open_link "https://www.youtube.com/@EHS-MIND"
    ;;
3)
    echo -e "${GREEN}Opening Telegram...${NC}"
    sleep 1
    open_link "https://t.me/ehmunna999"
    ;;
0)
    echo -e "${RED}Exiting Tool...${NC}"
    sleep 1
    break
    ;;
*)
    echo -e "${RED}Invalid Option!${NC}"
    ;;
esac

echo
read -p "Press Enter to return menu..."
done
