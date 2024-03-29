#!/bin/bash

echo "Start {{ .chezmoi.sourceFile }}"

ansible-playbook -i localhost, -c local /dev/stdin <<'EOF'
- name: "Install Base Cli utilities"
  hosts: localhost
  gather_facts: false
  tasks:
  - name: Create ssh config folder
    file:
      path: ~/.ssh
      state: directory

  - name: generate local key-pair
    community.crypto.openssh_keypair:
      path: ~/.ssh/id_rsa   
EOF

! chromium "https://gitea.heylazysunnykid.ru/user/settings/keys" &
! chromium "https://github.com/settings/keys" &
cat "$HOME/.ssh/id_rsa.pub" | wl-copy
read  -n 1 -p "Pubkey in clipboard. Add to repo keys and press ENTER" 
