# 🛠️ Bash Toolbox

A collection of custom Bash scripts for automating everyday tasks, improving productivity, and solving specific problems in Linux environments.

## 📦 Contents

This repository includes the following scripts:

- `battery-check.sh` – Checks and notifies you if your laptop battery is below 15%.
- `capture-image.sh` – Security script that captures image through camera, locks screen and plays sounds.
- `gnome-keyring-start.sh` – Simple script that starts gnome keyring.
- `ip-city-sort.sh` – Filters through a server access log and returns number of visits sorted by city or if city is passed returns ip addresses by that city.
- `run-project.sh` – Runs project backend and frontend.

> 🧩 Each script is standalone and can be used independently.

---

## 🚀 Quick Start

Clone this repository:

```bash
git clone https://github.com/YOUR_USERNAME/bash-toolbox.git
cd bash-toolbox
./script.sh

Examples:
-- ./run-project.sh 
-- ./ip-city-sort.sh New York
```

## ⚙️ Requirements
These scripts are built for:

- Bash 4.0+
- mako 1.10+
- hyprlock
- ghostty or kitty terminal emulator
- gnome-keyring
- GeoLite2-City.mmdb
- docker
- bun

Common GNU/Linux utilities: awk, sed, grep, curl, ping, df, etc.

## 🧪 Testing
Scripts can be tested in any modern terminal emulator on:

Ubuntu / Debian

Arch / Manjaro

Fedora

macOS (with GNU coreutils installed)

Some scripts may require sudo depending on their operation.

## 🤝 Contributing
Contributions are welcome!

If you'd like to add new scripts, improve existing ones, or fix bugs:

Fork this repo

Create a new branch: git checkout -b feature-name

Commit changes: git commit -m 'Add new feature'

Push to your fork: git push origin feature-name

Open a Pull Request

Please follow the Conventional Commits specification.

## 📄 License
This project is licensed under the MIT License. See the LICENSE file for details.

## 🙌 Acknowledgments
Inspired by everyday automation needs and refined through practical use.

Crafted with ❤️ by Mario Oklevski
