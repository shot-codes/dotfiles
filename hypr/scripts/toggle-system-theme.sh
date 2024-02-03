PREFERS=$(gsettings get org.gnome.desktop.interface color-scheme | tr -d "'")

if [ "$PREFERS" == "prefer-light" ]; then
	# hyprctl keyword general:col.active_border "rgba(ffa100ff) rgba(ff2a00ff) 45deg"
	echo "font_family Iosevka" >/home/shot/.config/kitty/font.conf
	kitten themes --reload-in=all --cache-age=-1 Alabaster Dark Custom
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
	gsettings set org.gnome.desktop.interface gtk-theme "Materia-dark-compact"
	for f in /run/user/1000/nvim.*; do nvim --server "$f" --headless --remote-expr 'execute("set background=dark")' &>/dev/null; done

else
	# hyprctl keyword general:col.active_border "rgba(33ccffff) rgba(00ff99ff) 45deg"
	echo "font_family Iosevka Bold" >/home/shot/.config/kitty/font.conf
	kitten themes --reload-in=all --cache-age=-1 Alabaster Custom
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
	gsettings set org.gnome.desktop.interface gtk-theme "Materia-light-compact"
	for f in /run/user/1000/nvim.*; do nvim --server "$f" --headless --remote-expr 'execute("set background=light")' &>/dev/null; done

fi
