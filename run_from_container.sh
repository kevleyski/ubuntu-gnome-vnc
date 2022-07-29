# Hostname configuration
echo "mycontainer" | tee /etc/hostname > /dev/null
cat /etc/hostname
echo "127.0.0.1     localhost" | tee -a /etc/hosts > /dev/null
echo "127.0.0.1     mycontainer" | tee -a /etc/hosts > /dev/null
echo "# The following lines are desirable for IPv6 capable hosts" | tee -a /etc/hosts > /dev/null
echo "::1     ip6-localhost ip6-loopback" | tee -a /etc/hosts > /dev/null
echo "fe00::0 ip6-localnet" | tee -a /etc/hosts > /dev/null
echo "ff00::0 ip6-mcastprefix" | tee -a /etc/hosts > /dev/null
echo "ff02::1 ip6-allnodes" | tee -a /etc/hosts > /dev/null
echo "ff02::2 ip6-allrouters" | tee -a /etc/hosts > /dev/null
cat /etc/hosts

