stow = cd config && stow -v -t ~

yay-install:
	xargs -d '\n' -a packages/package.list yay --noconfirm --needed -S
pacman-install:
	xargs -d '\n' -a packages/package.list sudo pacman --noconfirm --needed -S
i3:
	$(stow) i3

arch:
	ln -sf ~/dotfiles/config/git/gitconfig ~/.gitconfig
	ln -sf ~/dotfiles/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ln -sf ~/dotfiles/config/zsh/zshrc ~/.zshrc
