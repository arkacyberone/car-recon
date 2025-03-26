# 🐱 **CAT-ReCoN - Advanced Reconnaissance Tool**  

![CAT-ReCoN](https://img.shields.io/badge/Recon-Tool-blue?style=for-the-badge)  
**A sleek, fast, and powerful information-gathering tool for ethical hacking & cybersecurity research.**  

---

## 🚀 **Features**  
✔ **WHOIS Lookup** – Retrieves domain registration details.  
✔ **Traceroute** – Maps the network path to the target.  
✔ **Nmap Scan** – Performs **detailed** port scanning with OS & service detection.  
✔ **Custom Port Scanning** – Choose specific ports or scan all.  
✔ **Aggressive Nmap Scan (`-A -T4`)** – OS detection, services, scripts & more.  
✔ **Progress Bars** – Clean output without unnecessary clutter.  
✔ **Internet Connection Check** – Ensures network availability before scanning.  

---

## 📥 **Installation**  

### **For Termux (Android) :**  

```bash
pkg update && pkg upgrade -y  
pkg install git nmap whois traceroute -y  
git clone https://github.com/arkacyberone/cat-recon
cd cat-recon
chmod +x catrecon.sh
./catrecon.sh
```

### **For Debian based linux. :**  
```bash
apt update && apt upgrade -y  
apt install git nmap whois traceroute -y  
git clone https://github.com/arkacyberone/cat-recon
cd cat-recon
chmod +x catrecon.sh
./catrecon.sh
```

