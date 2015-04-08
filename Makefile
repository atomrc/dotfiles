PROJECT_PATH=~/.dotfiles

.PHONY: bash zsh vim git eslint tmux

all: bash zsh vim git eslint

bash:
	ln -s $(PROJECT_PATH)/bash/.bash_profile ~/.bash_profile
	ln -s $(PROJECT_PATH)/bash/.bash_aliases ~/.bash_aliases

zsh:
	ln -s $(PROJECT_PATH)/zsh/.zshrc ~/.zshrc

eslint:
	ln -s $(PROJECT_PATH)/eslint/.eslintrc ~/.eslintrc

vim:
	ln -s $(PROJECT_PATH)/vim/.vimrc ~/.vimrc
	ln -s $(PROJECT_PATH)/vim/.vim ~/.vim

git:
	ln -s $(PROJECT_PATH)/git/.gitconfig ~/.gitconfig
	ln -s $(PROJECT_PATH)/git/.gitignore_global ~/.gitignore_global

tmux:
	ln -s $(PROJECT_PATH)/tmux/.tmux.conf ~/.tmux.conf

clean:
	rm ~/.bash_profile
	rm ~/.bash_aliases
	rm ~/.zshrc
	rm -rf ~/.vim
	rm ~/.vimrc
	rm ~/.gitconfig
	rm ~/.gitignore_global
	rm ~/.eslintrc
	rm ~/.tmux.conf
