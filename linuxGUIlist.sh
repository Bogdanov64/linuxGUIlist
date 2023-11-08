#!/bin/bash

options=("xfce4" "lxqt" "fvwm" "Quit")

select opt in "${options[@]}"; do
    case $opt in
        "xfce4")
            echo "You selected xfce4"
export DISPLAY=:0
xfce4-session
            ;;
        "lxqt")
            echo "You selected lxqt"
export DISPLAY=:0
lxqt-session
            ;;
        "fvwm")
            echo "You selected fvwm"
export DISPLAY=:0
fvwm
            ;;
        "Quit")
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
