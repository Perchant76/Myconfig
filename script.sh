apt install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo bindkey "^[m" accept-line >>.zshrc
git clone https://github.com/jhwohlgemuth/zsh-pentest.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-pentest
echo alias v="nvim">>.zshrc
echo alias nmap_open_ports="nmap --open" >>.zshrc
echo alias nmap_list_interfaces="nmap --iflist">>.zshrc
echo alias nmap_slow="sudo nmap -sS -v -T1">>.zshrc
echo alias nmap_fin="sudo nmap -sF -v">>.zshrc
echo alias nmap_full="sudo nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v">>.zshrc
echo alias nmap_check_for_firewall="sudo nmap -sA -p1-65535 -v -T4">>.zshrc
echo alias nmap_ping_through_firewall="nmap -PS -PA">>.zshrc
echo alias nmap_fast="nmap -F -T5 --version-light --top-ports 300">>.zshrc
echo alias nmap_detect_versions="sudo nmap -sV -p1-65535 -O --osscan-guess -T4 -Pn">>.zshrc
echo alias nmap_check_for_vulns="nmap --script=vuln">>.zshrc
echo alias nmap_full_udp="sudo nmap -sS -sU -T4 -A -v -PE -PS22,25,80 -PA21,23,80,443,3389 ">>.zshrc
echo alias nmap_traceroute="sudo nmap -sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute ">>.zshrc
echo alias nmap_full_with_scripts="sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all ">>.zshrc 
echo alias nmap_web_safe_osscan="sudo nmap -p 80,443 -O -v --osscan-guess --fuzzy ">>.zshrc
echo alias nmap_ping_scan="nmap -n -sP">>.zshrc
sed -i -e 's/robbyrussell/darkblood/g'~/.zshrc
sudo apt install snapd
sudo snap install core
sudo snap install obsidian --classic
sudo apt update -y && sudo apt upgrade -y
sudo apt install bc build-essential libelf-dev linux-headers-$(uname -r) -y
sudo apt install dkms -y
sudo rmmod r8188eu
sudo git clone https://github.com/aircrack-ng/rtl8188eus
cd rtl8188eus
echo "blacklist r8188eu" | sudo tee /etc/modprobe.d/realtek.conf
sudo make
sudo make install
sudo modprobe 8188eu
echo "Install complete, rebooting now"
sudo reboot now
