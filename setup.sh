ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --systohc --utc

echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
echo ja_JP.UTF-8 UTF-8 >> /etc/locale.gen

locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf

echo Souta > /etc/hostname

systemctl enable dhcpcd.service
pacman -S vim
passwd

useradd -m -g wheel -s /bin/zsh sota
passwd sota

visudo

pacman -Syu


pacman -S xorg-server xorg-apps xorg-xinit xorg-xmodmap  xorg-xclock xterm  sudo grub-efi-x86_64 qtcreator boost opencv vim lightdm lightdm-gtk-greeter flashplugin otf-ipafont fcitx-im fcitx-configtool fcitx-mozc xdg-user-dirs-gtk grub os-prober dosfstools xf86-input-synaptics xf86-video-intel  mesa iw wpa_supplicant dialog rxvt-unicode zsh tmux i3 vlc dmenu clang gcc openssh git openssl libreoffice libreoffice-ja blueman powertop  tree  alsa-utils tig  source-highlight unzip htop dstat iotop networkmanager screenfetch chromium sakura

systemctl enable lightdm.service

echo 'KEYMAP=jp106' >> /etc/vconsole.conf

echo 'Section "InputClass"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'Identifier "Keyboard Defaults"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'MatchIsKeyboard "yes"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'Option "XkbLayout" "jp"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'EndSection'  >> /etc/X11/xorg.conf.d/10-keyboard.conf

pacman -S adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts

pacman -S intel-ucode efibootmgr dosfstools

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ArchLinuxGrub --recheck
mkdir /boot/EFI/boot
cp /boot/EFI/ArchLinuxGrub/grubx64.efi /boot/EFI/boot/bootx64.efi
grub-mkconfig -o /boot/grub/grub.cfg

mkdir /mnt/usb


