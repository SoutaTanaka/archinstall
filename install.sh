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

pacman -S xorg-server xorg-apps xorg-xinit xorg-xmodmap  xorg-xclock xterm  sudo grub-efi-x86_64 qtcreator boost opencv vim xfce4-goodies xfce4 lightdm lightdm-gtk-greeter flashplugin otf-ipafont fcitx-im fcitx-configtool fcitx-mozc xdg-user-dirs-gtk grub os-prober dosfstools xf86-input-synaptics xf86-video-intel  mesa iw wpa_supplicant dialog rxvt-unicode zsh tmux i3 vlc dmenu clang gcc openssh git openssl libreoffice libreoffice-ja blueman powertop  tree  alsa-utils tig  source-highlight unzip htop dstat iotop networkmanager screenfetch chromium sakura sl

systemctl enable lightdm.service

echo 'KEYMAP=jp106' >> /etc/vconsole.conf

vim /etc/mkinitcpio.conf

mkinitcpio -p linux

vim /etc/default/grub

git clone http://github.com/Shougo/neobundle.vim /home/sota 

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh


su sota

git clone https://github.com/SoutaTanaka/archinstall





rm /home/sota/.config/i3/config
ln -sf /home/sota/Archinstall/i3config /home/sota/.config/i3/config
rm /home/sota/.vimrc
ln -sf /home/sota/Archinstall/vimrc /home/sota/.vimrc
rm /home/sota/.zshrc
ln -sf /home/sota/Archinstall/zshrc /home/sota/.zshrc
rm /home/sota/.Xdefaults
ln -sf /home/sota/Archinstall/Xdefaults /home/sota/.Xdefaults

exit

grub-mkconfig -o /boot/grub/grub.cfg
grub-mkstandalone -o boot.efi -d /usr/lib/grub/x86_64-efi -O x86_64-efi --compress=xz /boot/grub/grub.cfg

mkdir /mnt/usb
