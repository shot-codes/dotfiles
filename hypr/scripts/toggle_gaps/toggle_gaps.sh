STATE_FILE=/home/shot/.config/hypr/scripts/toggle_gaps/gaps_state.txt

CURRENT_STATE=$(cat "$STATE_FILE")

if [ "$CURRENT_STATE" == "enabled" ]; then
	# hyprctl dispatch exec pkill waybar
	swww img ~/Documents/images/wallpapers/black.png --transition-step 15 --transition-fps 120
	hyprctl keyword general:gaps_in 0
	hyprctl keyword general:gaps_out 0
	hyprctl keyword general:col.inactive_border "rgba(202020ff)"
	hyprctl keyword decoration:rounding 0
	hyprctl keyword decoration:active_opacity 1.0
	hyprctl keyword decoration:inactive_opacity 1.0
	hyprctl keyword decoration:blur:enabled false
	hyprctl keyword decoration:drop_shadow no
	echo "disabled" >"$STATE_FILE"
else
	# hyprctl dispatch exec waybar
	hyprctl keyword general:gaps_in 10
	hyprctl keyword general:gaps_out 50
	hyprctl keyword decoration:rounding 5
	hyprctl keyword general:col.inactive_border "rgba(00000000)"
	hyprctl keyword decoration:active_opacity 0.9
	hyprctl keyword decoration:inactive_opacity 0.7
	hyprctl keyword decoration:blur:enabled true
	hyprctl keyword decoration:drop_shadow yes
	echo "enabled" >"$STATE_FILE"
	swww img ~/Documents/images/wallpapers/1.jpg --transition-step 1 --transition-fps 120
fi
