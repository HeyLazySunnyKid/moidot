#!/bin/bash

{{ if eq .chezmoi.osRelease.name "Ubuntu" }}
sudo apt-get update
sudo apt-get install python pip
{{ else if eq .chezmoi.osRelease.name "Arch Linux" }}
sudo pacman -Syy python python-pip ansible
{{ end }}
