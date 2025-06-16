#!/bin/bash
streamer -c /your/video/output -b 16 -o ~/path/outfile.jpeg
mpv ~/path/camera_sound.mp3
kitty -e mpv ~/path/cound.mp3 & hyprlock
