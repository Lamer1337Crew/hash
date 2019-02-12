#!/bin/bash
# thanks for indosec
# (c) VanGans
clear;
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
NORMAL="\033[0m"
banner() {
printf "$NORMAL"
cat << "banners"
Hash Cracker Md5
Create By VanGans
banners
}
banner

DATA() {
UR=$(curl -s -L "http://indosec.web.id/api/ultra_hash.php?action=dec&value=$cr" | jq -r .data)
if [[ $UR == "SUCCES" ]]; then
    echo "${RED}ERORRGAN[!]"
else
    echo -e "${GREEN}TERCRACK GAN => $UR"
fi

}
read -p "Hash(?) => " cr
DATA $cr
