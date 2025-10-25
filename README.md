
### 🧩 1️⃣ Create a new repository

1. Go to **[https://github.com/new](https://github.com/new)**
2. Fill in:

   * **Repository name:** `connect-sratek`
   * **Description:** `A simple Linux script and launcher to connect automatically to SraTek Wi-Fi via nmcli.`
   * Choose **Public**
   * ✅ *Initialize with a README*

---

### 🧩 2️⃣ Add your files locally

If you already have your HTML file (and later the `.sh` and `.desktop`), open a terminal and run:

```bash
# Clone the new repo
git clone https://github.com/YOUR-USERNAME/connect-sratek.git
cd connect-sratek

# Copy the HTML file you created
cp ~/Connect-SraTek-launcher.html .

# (Optional) also add the bash and desktop files
echo '#!/bin/bash
nmcli device wifi connect "SraTek" password "MEsrabon6896abc"
notify-send "Connected to SraTek"' > connect-sratek.sh

echo '[Desktop Entry]
Type=Application
Name=Connect to SraTek
Exec=/home/$USER/connect-sratek.sh
Icon=network-wireless
Terminal=true' > Connect-SraTek.desktop

# Make them executable
chmod +x connect-sratek.sh Connect-SraTek.desktop

# Stage and commit
git add .
git commit -m "Add launcher HTML, bash script, and desktop shortcut"

# Push to GitHub
git push origin main
```

---

### 🧩 3️⃣ Add a clean README (optional)

You can use this:

````markdown
# Connect-SraTek

A small, user-friendly launcher that connects Linux systems to the Wi-Fi network **SraTek** via `nmcli`.  
Includes a `.sh` bash script and a `.desktop` shortcut for double-click use.

## How to Use
1. Download or clone the repo:
   ```bash
   git clone https://github.com/YOUR-USERNAME/connect-sratek.git
````

2. Make scripts executable:

   ```bash
   chmod +x connect-sratek.sh Connect-SraTek.desktop
   ```
3. Double-click **Connect-SraTek.desktop** → Choose **Run**.

> 💡 After the first connection, NetworkManager securely stores the password, so you can remove it from the script for better security.


You can just upload that to GitHub in one click.
```
