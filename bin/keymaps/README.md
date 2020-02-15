#!/bin/sh

#Create file /usr/share/X11//xkb/symbols/custom_opts
#Insert below text
//Make Caps an additional Escape
hidden partial modifier_keys
xkb)symbols "hyper_esc" {
	key <CAPS> { [ Escape ] };
	modifier_map Mod3 { <CAPS> };
};

#Edit /usr/share/X11/xkb/rules/evdev
#Add below line to ! options = symbols
custom:hyper_esc    =     +custom_opts(super_esc)

#Edit /usr/share/X11/xkb/rules/evdev.lst
custom:hyper_esc	Make Caps Lock an additional ESC and Mod3
