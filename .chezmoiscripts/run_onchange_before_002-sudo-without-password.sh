#!/bin/bash

ansible-playbook -i localhost, -c local -K /dev/stdin <<'EOF'
- name: "Sudo Without Password"
  hosts: localhost
  become: true
  tasks:
    - name: Make users passwordless for sudo in group sudo
      lineinfile:
        path: /etc/sudoers
        state: present
        regexp: '^%sudo'
        line: '%sudo ALL=(ALL) NOPASSWD: ALL'
        validate: 'visudo -cf %s'
EOF
