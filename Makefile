PROJECT_PATH=~/.dotfiles

.PHONY: bash zsh vim git eslint tmux kakoune

all: bash zsh vim git eslint tmux

bash:
	ln -s $(PROJECT_PATH)/bash/.bashrc ~/.bashrc
	ln -s $(PROJECT_PATH)/bash/.bash_profile ~/.bash_profile

bash-clean:
	-rm ~/.bash_profile
	-rm ~/.bash_aliases
	-rm ~/.bashrc

kakoune:
	ln -s $(PROJECT_PATH)/kakoune ~/.config/kak

kakoun-clean:
	-rm ~/.config/kak
	
zsh:
	ln -s $(PROJECT_PATH)/zsh/.zshrc ~/.zshrc

zsh-clean:
	-rm ~/.zshrc

eslint:
	ln -s $(PROJECT_PATH)/eslint/.eslintrc ~/.eslintrc

eslint-clean:
	-rm ~/.eslintrc

vim:
	ln -s $(PROJECT_PATH)/vim/.vimrc ~/.config/nvim/init.vim
	ln -s $(PROJECT_PATH)/vim/.vim ~/.config/nvim/vim

vim-clean:
	-rm -rf ~/.vim
	-rm ~/.vimrc

git:
	ln -s $(PROJECT_PATH)/git/.gitconfig ~/.gitconfig
	ln -s $(PROJECT_PATH)/git/.git-completion.bash ~/.git-completion.bash
	ln -s $(PROJECT_PATH)/git/.gitignore_global ~/.gitignore_global

git-clean:
	-rm ~/.gitconfig
	-rm ~/.gitignore_global
	-rm ~/.git-completion.bash

tmux:
	ln -s $(PROJECT_PATH)/tmux/.tmux.conf ~/.tmux.conf

tmux-clean:
	-rm ~/.tmux.conf

clean: bash-clean zsh-clean eslint-clean vim-clean git-clean tmux-clean
	echo "config file cleaned"
