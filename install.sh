#!/bin/sh

clone_package() {
    echo "Cloning Main config"
    git clone git@github.com:Mushrr/nvim-config.git ~/.config/nvim
}

packer_install() {
    if ! [ -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]
    then
        echo "Installing Packer - a package manager for nvim"
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
            ~/.local/share/nvim/site/pack/packer/start/packer.nvim
                    echo "Finished install Packer"
                    echo "open nvim, use :PackerSync to install all packages"
    fi
}

# git clone this project into ~/.config/nvim
if ! [ -e ~/.config/nvim ] 
    clone_package
    packer_install
then
    clone_package
    packer_install
else
    # wether want to remove your package
    read -p "Seems like your neovim config has already existed, do you want to copy it as bak? Y or N" flag
    if [ "$flag" = "Y" ]
    then
        mv ~/.config/nvim ~/.config/nvim_bak
        clone_package
        packer_install

    elif [ "$flag" = "thanks" ] 
    then
        echo "Thanks ~"
    fi
fi

