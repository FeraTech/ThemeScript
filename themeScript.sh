#!/bin/bash

echo
echo 'Bienvenido al ThemeScript'
mkdir -p gitClones/
cd gitClones/

while true; do
	echo "
¿Qué deseas instalar?
1) Temas GTK
2) Temas de iconos
3) Salir"
    read -p "" op
    case $op in
        [1]* ) echo
			echo "Temas GTK"
			echo "¿Qué temas GTK deseas instalar?"
			echo "1) Qogir"
			echo "2) Matcha"
			echo "3) Regresar"
			read -p "" op
			case $op in
				[1]* ) echo
					echo "Qogir" 
					echo "Descagando tema..."
					git clone https://github.com/vinceliuice/Qogir-theme
					cd Qogir-theme/
					./install.sh -t all -c dark
					break;;
				[2]* ) echo
					echo "Matcha" 
					echo "Descagando tema..."
					git clone https://github.com/vinceliuice/Matcha-gtk-theme
					cd Matcha-gtk-theme/ 
					./install.sh -c dark
					break;;
			esac
			break;;
        [2]* ) echo
			echo "Temas de iconos" 
			echo "¿Qué temas de iconos deseas instalar?"
			echo "1) Qogir"
			echo "2) Tela"
			read -p "" op
			case $op in
				[1]* ) echo
					echo "Qogir"
					echo "Descagando tema..."
					git clone https://github.com/vinceliuice/Qogir-icon-theme
					cd Qogir-icon-theme/
					./install.sh -d $HOME/.icons/
					break;;
				[2]* ) echo
					echo "Tela"
					echo "Descagando tema..."
					git clone https://github.com/vinceliuice/Tela-icon-theme
					cd Tela-icon-theme/
					./install.sh -a -d $HOME/.icons/
					break;;
			esac
			break;;
		[3]* ) echo
			echo "Bye :))"
			echo
			break;;
        * ) echo "Seleccione una opción valida.";;
    esac
done
