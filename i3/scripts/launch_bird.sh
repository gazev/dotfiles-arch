#! /bin/bash

# attempts to launch thunderbird every 10 seconds (max 5 attempts) 
# if failed send notification that proccess failed

attempts=5

function loop {
    while [[ $attempts != 0 ]]; do 
        if [[ $(ping -w 1 -c 1 8.8.8.8 2> /dev/null) ]]; then
            thunderbird &
            sleep 2
            i3-msg "[class=thunderbird] move workspace 5"
            exit 0
        else
            ((attemps--))
            sleep 10
        fi
    done
}

loop

notify-send "launch_bird.sh" "Script failed to launch thunderbird.\nCheck your internet connection"
exit 1
