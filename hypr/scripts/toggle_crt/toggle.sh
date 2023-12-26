STATE_FILE=/home/shot/.config/hypr/scripts/toggle_crt/state.txt

CURRENT_STATE=$(cat "$STATE_FILE")

if [ "$CURRENT_STATE" == "enabled" ]; then
	hyprctl keyword debug:damage_tracking 0
	hyprctl keyword decoration:screen_shader "/home/shot/.config/hypr/scripts/toggle_crt/orig.frag"
	echo "disabled" >"$STATE_FILE"
else
	hyprctl keyword debug:damage_tracking 1
	hyprctl reload
	echo "enabled" >"$STATE_FILE"
fi
