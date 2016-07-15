dotfiles
========

All my dotfiles to configure common tools I use (git, bach, vim, eslint ...).

It also includes install scripts for systems I often use (macos, archlinux).  
Those scripts install the dependencies needed using the systems package manager (brew for MacOS and pacman for archlinux)

To install all the dependencies, run :

    sh install/<system>.sh

To install all symbolic links for the configuration files, just run :

    make

To clean all the installed symbolic files :

    make clean
