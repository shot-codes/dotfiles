STATE_FILE=/home/shot/.config/hypr/scripts/toggle_gaps/gaps_state.txt

CURRENT_STATE=$(cat "$STATE_FILE")

if [ "$CURRENT_STATE" == "enabled" ]; then
	hyprctl keyword general:gaps_in 0
	hyprctl keyword general:gaps_out 0
	hyprctl keyword general:col.inactive_border "rgba(000030ff)"
	hyprctl keyword decoration:rounding 0
	echo "disabled" >"$STATE_FILE"
else
	hyprctl keyword general:gaps_in 10
	hyprctl keyword general:gaps_out 50
	hyprctl keyword decoration:rounding 5
	hyprctl keyword general:col.inactive_border "rgba(00000000)"
	echo "enabled" >"$STATE_FILE"
fi
