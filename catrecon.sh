#!/bin/bash

# Define colors  
CYAN='\033[1;36m'  
PINK='\033[1;35m'  
RED='\033[1;31m'  
BLUE='\033[1;34m'  
YELLOW='\033[1;33m'  
GREEN='\033[1;32m'  
RESET='\033[0m'  

# Clear screen  
clear  

# Display banner  
echo -e "${BLUE}CAT-ReCoN"  
echo -e "${BLUE}-----------"  
echo -e "${CYAN} /\_/\  "  
echo -e "${PINK}( o.o ) "  
echo -e "${CYAN} > ^ <   Hi!, let's do some recon!${RESET}"  
echo -e "${PINK}(  _  )"
echo -e "${PINK} m   m"
echo -e "${BLUE}-----------"  
echo -e "${YELLOW}Tool by Surendra - Stay awesome.${RESET}"  

# Function to check internet connection  
check_internet() {  
    echo -e "${YELLOW}Checking internet connection...${RESET}"  
    ping -c 1 google.com &>/dev/null  
    if [[ $? -ne 0 ]]; then  
        echo -e "${RED}No internet connection! Please connect and try again.${RESET}"  
        exit 1  
    else  
        echo -e "${GREEN}Internet connection detected! Proceeding...${RESET}"  
    fi  
}  

# Progress bar function  
progress_bar() {  
    echo -ne "${CYAN}[$1] ${BLUE}"  
    for ((i=0; i<=20; i++)); do  
        echo -ne "#"  
        sleep 0.1  
    done  
    echo -e " ${RED}Done!${RESET}"  
}  

# Check internet before proceeding  
check_internet  

# Get target  
echo -e "${CYAN}Enter the target domain/IP:${RESET}"  
read -p "--->" target  

# WHOIS Information  
echo -e "${PINK}[+] Fetching WHOIS info...${RESET}"  
progress_bar "Running whois"
whois $target > whois.txt  
echo -e "${GREEN}✔ WHOIS data saved in whois.txt${RESET}"  

# Traceroute  
echo -e "${PINK}[+] Running Traceroute...${RESET}"  
progress_bar "Running traceroute"
traceroute $target > traceroute.txt  
echo -e "${GREEN}✔ Traceroute data saved in traceroute.txt${RESET}"  

# Nmap Scan  
echo -e "${CYAN}Enter ports to scan (e.g., 80,443,22) or press Enter for default scan:${RESET}"  
read -p "--->" ports  

if [[ -z "$ports" ]]; then  
    echo -e "${PINK}[+] Scanning common ports...${RESET}"  
    progress_bar "Running nmap scan"
    echo -e "${PINK}wait.... This might take more time!"
    nmap -T4  $target > nmap_scan.txt  
else  
    echo -e "${PINK}[+] Scanning specified ports: $ports...${RESET}"  
    progress_bar "Running nmap scan"
    nmap -A -T4 -p $ports $target > nmap_scan.txt  
fi  

echo -e "${GREEN}✔ Nmap scan saved in nmap_scan.txt${RESET}"  

echo -e "${YELLOW}Recon CompleteD! Use cat to view the results${RESET}"

