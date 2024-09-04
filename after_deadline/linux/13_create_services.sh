#! /bin/bash

mv ./simple_service.py ~/simple_service.py

cat > /etc/systemd/system/simple_ser.service << EOF
[Unit]
Description=Simple python
After=multi-user.target

[Service]
Restart=on-failure
WorkingDirectory=/root
ExecStart=/usr/bin/python3 /root/simple_service.py

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable simple_ser
systemctl start simple_ser
echo "Simple Service Started"