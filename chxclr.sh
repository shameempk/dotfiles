xresources_file=~/.Xresources
x_color_dir=~/.Xresources.d/color.d
if [ "$#" -ne 1 ]
	then
  		echo "Usage: chxclr.sh <colorscheme>"
		exit
fi

if [ -e $x_color_dir/$1 ]
	then
		echo "File $1 found in $x_color_dir."	
		echo "Applying color scheme now.."	
		sed -i --follow-symlinks "s/color.d\/[^\/]*\"$/color.d\/$1\"/g" $xresources_file
		echo "Reloading xrdb..."
		xrdb $xresources_file
	else
		echo "Error: File $1 not found in $x_color_dir"
		false
fi
exit
