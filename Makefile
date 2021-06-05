yay-install:
	xargs -d '\n' -a packages/package.list yay --noconfirm --needed -S

pacman-install:
	xargs -d '\n' -a packages/pacman-package.list sudo pacman --noconfirm --needed -S

arch:
	ln -sf ~/dotfiles/config/git/gitconfig ~/.gitconfig
	ln -sf ~/dotfiles/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	echo "change export ZSH path with your home directory"
	ln -sf ~/dotfiles/config/zsh/zshrc ~/.zshrc
	ln -sf ~/dotfiles/config/picom/picom.conf ~/.config/picom.conf

i3:
	ln -sf ~/dotfiles/config/i3/config ~/.i3/config

theme-grub:
	echo "change GRUB_THEME path with your home directory"
	sudo ln -sf ~/dotfiles/grub/etc-default-grub /etc/default/grub
	sudo grub-mkconfig -o /boot/grub/grub.cfg

setup-keyboard:
	sudo ln -sf ~/dotfiles/keyboard/ay /usr/share/X11/xkb/symbols/ay

set-firacode:
	sudo ln -sf ~/dotfiles/font/* /usr/share/fonts/TTF/

set-lightdm:
	sudo ln -f ~/dotfiles/lightdm/slick-greeter.conf /etc/lightdm/slick-greeter.conf
