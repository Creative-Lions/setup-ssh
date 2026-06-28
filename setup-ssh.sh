#!/bin/bash
cat > /root/.ssh/authorized_keys << 'KEYS'
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDV5FGuU9ZeSqGIxmVkGiC+WHEC3DUNrGObjvqT1gh64 jhonatanleao
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMT5f5jaZQF+1Caa0wFdqeFTZS8zlnsT3AbVo0sN1thZ coolify-gestao6
KEYS
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
systemctl restart ssh
echo "OK"
