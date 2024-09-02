#! /bin/bash

declare -A distro;
distro[/etc/redhat-release]="dnf update"
distro[/etc/arch-release]="pacman -Syu"
distro[/etc/gentoo-release]="emaint -a sync"
distro[/etc/SuSE-release]="zypper patch"
distro[/etc/debian_version]="apt update"
distro[/etc/alpine-release]="apk upgrade --no-cache"

for f in ${!distro[@]}
do
    if [ -f $f ];then
        ${distro[$f]} > "log.txt"
    fi
done
