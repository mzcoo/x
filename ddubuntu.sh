#!/bin/bash
export ipA=$(ip route get 1 | awk -F 'src ' '{print $2}' | awk '{print $1}')
export ipG=$(ip route | grep default | awk '{print $3}' | head -1)
export SUBNET=$(ip -o -f inet addr show | awk '/scope global/{sub(/[^.]+\//,"0/",$4);print $4}' | head -1 | awk -F '/' '{print $2}')
export value=$(( 0xffffffff ^ ((1 << (32 - $SUBNET)) - 1) ))
export ipM="$(( (value >> 24) & 0xff )).$(( (value >> 16) & 0xff )).$(( (value >> 8) & 0xff )).$(( value & 0xff ))"
wget https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh
bash ./InstallNET.sh -u 20.04 -p Vm54w8GcUc7Hp1c8EP471halYxJ -apt http://archive.ubuntu.com/ubuntu --ip-addr $ipA --ip-mask $ipM --ip-gate $ipG
