#!/usr/bin/env bash

current=$(hyprctl devices -j | jq -r '.keyboards[0].active_keymap')

if [[ "$current" == "English (US)" ]]; then
    hyprctl keyword input:kb_layout us
    hyprctl keyword input:kb_variant intl
    hyprctl keyword input:kb_options caps:escape
    notify-send "Keyboard layout" "US-International"
else if [[ "$current" == "English (US, intl., with dead keys)" ]]
    hyprctl keyword input:kb_layout us
    hyprctl keyword input:kb_variant
    hyprctl keyword input:kb_options caps:escape
    notify-send "Keyboard layout" "US"
fi
