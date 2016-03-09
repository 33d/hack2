# Allow Arduino to run
adduser $USER dialout

# Update the Unity launcher
cat << EOF > "$HOME/.config/autostart/configure-launcher.desktop"
[Desktop Entry]
Name=Configure launcher items
Type=Application
Exec=gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://firefox.desktop', 'application://libreoffice-writer.desktop', 'application://libreoffice-calc.desktop', 'application://libreoffice-impress.desktop', 'application://arduino.desktop', 'application://pronterface.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"
EOF

