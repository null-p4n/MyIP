#!/bin/bash

figlet Whats my ip?
echo "IP Toolkit v1"
echo "------"
echo ""
sleep 1
echo "Lets do some checks"
sleep 1
clear
ping google.com -4 -c 5
clear
echo ""
sudo apt install speedtest-cli net-tools -y
clear
echo ""

PS3='Select Option: '
options=("Public IP" "Speed Test" "Local IPs" "My DNS" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Public IP")
            echo "----"
            echo "Let's check icanhazip.com"
            echo "----"
clear
curl icanhazip.com
echo ""

            ;;
        "Speed Test")
              echo "----"
              echo "Now we check network speed"
              echo "----"
              clear
            speedtest
            ;;
        "My DNS")
              echo "----"
              echo "Now we check DNS"
              echo "----"
              clear
             cat /etc/resolv.conf
            ;;
        "Local IPs")
             echo "----"
             echo "Local Network"
             echo "----"
             clear
            ifconfig
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
