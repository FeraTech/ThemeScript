#!/bin/bash

echo
echo 'Welcome to ThemeScript'
mkdir -p gitClones/
cd gitClones/

while true; do
    echo "
What do you want to install?
1) GTK themes
2) Icon themes
3) Exit
    "
    read -p "" op
    case $op in
        [1]* ) echo
            echo "GTK themes"
            echo "Which GTK themes do you want to install?"
            echo "1) Qogir"
            echo "2) Matcha"
            echo "3) WhiteSur"
            echo "4) Layan"
            echo "5) Exit"
            read -p "" op
            case $op in
                [1]* ) echo
                    echo "Qogir"
                    echo "Downloading theme..."
                    git clone https://github.com/vinceliuice/Qogir-theme
                    cd Qogir-theme/
                    ./install.sh -t all -c dark
                break;;
                [2]* ) echo
                    echo "Matcha"
                    echo "Downloading theme..."
                    git clone https://github.com/vinceliuice/Matcha-gtk-theme
                    cd Matcha-gtk-theme/
                    ./install.sh -c dark
                break;;
                [3]* ) echo
                    echo "WhiteSur"
                    echo "Downloading theme..."
                    git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
                    cd WhiteSur-gtk-theme/
                    ./install.sh -d $HOME/.themes -o normal -c Dark -t all -i tux
                break;;
                [4]* ) echo
                    echo "Layan"
                    echo "Downloading theme..."
                    git clone https://github.com/vinceliuice/Layan-gtk-theme
                    cd Layan-gtk-theme/
                    ./install.sh -d $HOME/.themes
                break;;
                [5]* ) echo
                    echo "Bye :))"
                    echo
                break;;
                * ) echo "Select a valid option.";;
            esac
        break;;
        [2]* ) echo
            echo "Icon themes"
            echo "Which icon themes do you want to install?"
            echo "1) Qogir"
            echo "2) Tela"
            echo "3) WhiteSur"
            echo "4) Flatery"
            echo "5) Exit"
            read -p "" op
            case $op in
                [1]* ) echo
                    echo "Qogir"
                    echo "Downloading icons..."
                    git clone https://github.com/vinceliuice/Qogir-icon-theme
                    cd Qogir-icon-theme/
                    ./install.sh -d $HOME/.icons/
                break;;
                [2]* ) echo
                    echo "Tela"
                    echo "Downloading icons..."
                    git clone https://github.com/vinceliuice/Tela-icon-theme
                    cd Tela-icon-theme/
                    ./install.sh -a -d $HOME/.icons/
                break;;
                [3]* ) echo
                    echo "WhiteSur"
                    echo "Downloading icons..."
                    git clone https://github.com/vinceliuice/WhiteSur-icon-theme
                    cd WhiteSur-icon-theme/
                    ./install.sh -d $HOME/.icons -t all
                break;;
                [4]* ) echo
                    echo "Flatery"
                    echo "Downloading icons..."
                    git clone https://github.com/cbrnix/Flatery
                    cd Flatery/
                    ./install.sh
                break;;
                [5]* ) echo
                    echo "Bye :))"
                    echo
                break;;
                * ) echo "Select a valid option.";;
            esac
        break;;
        [3]* ) echo
            echo "Bye :))"
            echo
        break;;
        * ) echo "Select a valid option.";;
    esac
done
