#/bin/bash
termux-setup-storage
pkg up
pkg install proot-distro pulseaudio nano -y
echo "# Start pulse audio server after launching Termux">>.profile
echo "pulseaudio --start --load=\"module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1\" --exit-idle-time=-1">>.profile
echo "pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1">>.profile
proot-distro install archlinux
echo "#/bin/bash">>~/.bashrc
echo "alias arch='proot-distro login archlinux'">>~/.bashrc
proot-distro login archlinux
