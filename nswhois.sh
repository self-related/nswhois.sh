#!/bin/bash
domain=$1
dns_server=$2


dns_response=$(nslookup $domain $dns_server)
echo -e "\n$dns_response\n"


# Get IPs
ips=$(echo $dns_response | grep -Po "(?<=$domain.Address..)(\d?\d?\d\.[\d\.]+|[\w\d\:]+)")
echo -e "FOUND IPs:\n$ips"


# Check every IP with whois
for ip in $ips; do
  echo -e "\n######################################"
  echo -e "CHECKING IP: \n$ip"

  whois $ip

  echo -e "IP checked:\n$ip"
  echo -e "\n> Press Enter to continue:"
  
  read
done

echo -e "DONE\n"
