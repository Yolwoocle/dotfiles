stow = cd config && stow -v -t ~

install:
	xargs -d '\n' -a packages/package.list yay --noconfirm --needed -S
i3:
	$(stow) i3

arch:
	ln -sv “~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
	ln -sv “~/dotfiles/zsh/zshrc ~/.zshrc
	ln -sv “~/dotfiles/git/gitconfig” ~/.gitconfig”