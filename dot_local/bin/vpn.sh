#!/bin/bash

case $1 in
    "mx")
    echo "Mexico"
    vpn_conf="$HOME/Documents/vpn/mx.protonvpn.udp.ovpn"
    ;;
    
    "cr")
    echo "Costa Rica"
    vpn_conf="$HOME/Documents/vpn/cr.protonvpn.udp.ovpn"
    ;;

    "us")
    echo "United States"
    vpn_conf="$HOME/Documents/vpn/us.protonvpn.udp.ovpn"
    ;;

    "sv")
    echo "El Salvador"
    vpn_conf="$HOME/Documents/vpn/sv.protonvpn.udp.ovpn"
    ;;

    "pe")
    echo "Peru"
    vpn_conf="$HOME/Documents/vpn/pe.protonvpn.udp.ovpn"
    ;;

    "br")
    echo "Brasil"
    vpn_conf="$HOME/Documents/vpn/br.protonvpn.udp.ovpn"
    ;;

   "ec")
    echo "Ecuador"
    vpn_conf="$HOME/Documents/vpn/ec.protonvpn.udp.ovpn"
    ;;

    *)
    echo "Use mx, cr, us, sv, pe, br or ec"
    ;;
esac

echo $vpn_conf
vpn_pass="$HOME/Documents/vpn/pass.txt"

sudo openvpn --config $vpn_conf --auth-user-pass $vpn_pass 
