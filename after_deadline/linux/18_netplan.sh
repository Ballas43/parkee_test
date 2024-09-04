#! /bin/bash

cat > /etc/netplan/parkee-int.yaml << EOF
network:
    version: 2
    ethernets:
        eth0:
            addresses:
                - 192.168.1.100/24
            nameservers:
                addresses:
                    - 8.8.8.8
                    - 8.8.4.4
            routes:
                - to: default
                  via: 192.168.1.1
EOF

netplan apply