#!/usr/bin/bash

# Define the clock
Clock() {
    DATE=$(date "+%a %b %d, %R")
    echo -n "$DATE"
}

# Define the music
Music() {
    PLAYING=`mpc current`
    test -n "$PLAYING ▶" && echo $PLAYING || echo "▐▐"
}

# Print the clock
while true; do
    echo "%{Fwhite}%{B#AA000000}%{l} $(Music)%{c} $(Clock)%{F-}"
    sleep 1;
done
