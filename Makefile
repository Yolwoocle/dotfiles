yay-install:
	xargs -d '\n' -a packages/package.list yay --noconfirm --needed -S

pacman-install:
	xargs -d '\n' -a packages/package.list sudo pacman --noconfirm --needed -S

arch:
	ln -sf ~/dotfiles/config/git/gitconfig ~/.gitconfig
	ln -sf ~/dotfiles/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ln -sf ~/dotfiles/config/zsh/zshrc ~/.zshrc

i3:
	ln -sf ~/dotfiles/config/i3/config ~/.i3/config
	pip install --user bumblebee-status
