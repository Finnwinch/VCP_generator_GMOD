#!/bin/bash
echo "Conceptualization VCP (view-controler-partition) Architecture - by finnwinch📎"
echo "VC Architecture was used to sperate action by level of design"
read -p "Please enter the name of your script : " name
cd ~/Steam/steamapps/common/GarrysModDS/garrysmod/addons #path about your server addons section
while test -d $name ; do
	read -p "Please enter a valide and unique name for your script : " name
done
mkdir $name
cd $name
mkdir lua
cd lua
mkdir autorun
cd autorun
touch $name.src.lua #loader
cd ..
mkdir $name
cd $name
mkdir cache #cache color/materials/any
read -p "do you want to precache default color ? (empty for no) : " color_preselected
if test ! -v $color_preselected ; then
	cd cache
	touch color.lua
	color_lists="color_primary   = Color(0, 123, 255)
color_secondary = Color(108, 117, 125)
color_success   = Color(40, 167, 69)
color_danger    = Color(220, 53, 69)
color_warning   = Color(255, 193, 7)
color_info      = Color(23, 162, 184)
color_light     = Color(248, 249, 250)
color_dark      = Color(33, 37, 41)
color_greyDark  = Color(52, 58, 64)
color_mauve     = Color(128, 92, 145)
color_marine    = Color(60, 79, 118)"
	echo "$color_lists" >> color.lua
	cd ..
fi
mkdir class #class for management your addons
mkdir connection #folder contain networking
cd connection
#touch sv_base.lua #recive server example
#touch cl_base.lua #recive client example
touch registre.lua #all your networking register
cd ..
mkdir database #code about your table / droptable
mkdir event #your hook used
mkdir import #all file imported, like framework
mkdir interface #folder contain interface parts
cd interface
mkdir components #interaction about your layout
mkdir container #elements into your layout
mkdir layout #frame container with only first childen
mkdir design #paint section !deprecreate, mayby, idk
cd ..
mkdir package #develop your own function to use
mkdir sql #data access object
#mkdir config #folder contain config
#cd config
#touch $name.cfg.lua
#cd ..
mkdir src #used for test implementation and final put data like pre config setup
code ~/Steam/steamapps/common/GarrysModDS/garrysmod/addons/$name
read -p "Conceptualization VCP Architecture Finished!" closed
