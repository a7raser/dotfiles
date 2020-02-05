#!/bin/sh

wal --iterative -i ~/media/images/wallpapers; \
	COUNT=$(cat $HOME/.fehbg | awk '{print $4}' | wc -c); \
	COUNT=$(($COUNT-3)); \
	WALLPAPER=$(cat $HOME/.fehbg | awk '{print $4}' | cut -c2-$COUNT); \
betterlockscreen -u $WALLPAPER
