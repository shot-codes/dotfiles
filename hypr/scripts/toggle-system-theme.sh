PREFERS=$(gsettings get org.gnome.desktop.interface color-scheme | tr -d "'")

if [ "$PREFERS" == "prefer-light" ]; then
	echo "font_family Iosevka" >/home/shot/.config/kitty/font.conf
	kitten themes --reload-in=all Alabaster Dark Custom
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
	for f in /run/user/1000/nvim.*; do nvim --server "$f" --headless --remote-expr 'execute("set background=dark")' &>/dev/null; done

else
	echo "font_family Iosevka Bold" >/home/shot/.config/kitty/font.conf
	kitten themes --reload-in=all Alabaster Custom
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
	for f in /run/user/1000/nvim.*; do nvim --server "$f" --headless --remote-expr 'execute("set background=light")' &>/dev/null; done

fi
