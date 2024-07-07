#!/bin/bash

i3-msg -t subscribe '[ "window::floating" ]' | while read -r event; do
	window_id=$(echo $event | jq -r '.container.id')
	i3-msg "[con_id=$window_id] resize set 1950 950"
	i3-msg "[con_id=$window_id] move position center"
done
