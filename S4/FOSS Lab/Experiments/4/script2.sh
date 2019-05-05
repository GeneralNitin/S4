# OS, version, release no, kernel release no
echo "OS: " `uname -o`
echo "Version: " $(grep -i "^version=" /etc/*release)
echo "Release no: " `uname -r`
echo "Kernel version: " `uname -v`
echo ""

# all available shells
echo "AVAILABLE SHELLS: "
cat /etc/shells
echo ""

# computer CPU info - processor type, speed
echo "CPU INFO: " 
lscpu
echo ""

# memory info
echo "MEMORY INFORMATION: " 
free -m

# harddisk info
echo "HARDDISK INFO: "
parted -l
