STATE_FILE=/home/shot/.config/hypr/scripts/toggle_gaps/gaps_state.txt

CURRENT_STATE=$(cat "$STATE_FILE")

if [ "$CURRENT_STATE" == "enabled" ]; then
	hyprctl keyword general:gaps_in 3
	hyprctl keyword general:gaps_out 6
	echo "disabled" >"$STATE_FILE"
else
	hyprctl keyword general:gaps_in 10
	hyprctl keyword general:gaps_out 50
	echo "enabled" >"$STATE_FILE"
fi
