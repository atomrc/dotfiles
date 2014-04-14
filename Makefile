PROJET_PATH=~/.dotfiles

.PHONY: bash vim git

all: bash vim git

bash:
	ln -s $(PROJET_PATH)/bash/.bash_profile ~/.bash_profile
	ln -s $(PROJET_PATH)/bash/.bash_profile ~/.bash_aliases

vim:
	ln -s $(PROJET_PATH)/vim/.vimrc ~/.vimrc
	ln -s $(PROJET_PATH)/vim/.vim ~/.vim

git:
	ln -s $(PROJET_PATH)/git/.gitconfig ~/.gitconfig
	ln -s $(PROJET_PATH)/git/.gitignore_global ~/.gitignore_global

clean:
	rm ~/.bash_profile
	rm ~/.bash_aliases
	rm -rf ~/.vim
	rm ~/.vimrc
	rm ~/.gitconfig
	rm ~/.gitignore_global
