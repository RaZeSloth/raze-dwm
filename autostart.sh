#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
#autorandr horizontal
#run xrandr --output eDP-1 --mode 1920x1440 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off
#run xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off
run xrandr --output eDP-1 --scale 1.25x1.25 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off
# CUR BRIGHTNESS:  xrandr --verbose | awk '/Brightness/ { print $2; exit }'
# SET BRIGHTNESS: xrandr --output eDP-1 --brightness NUMBER
run "nm-applet"
run "pamac-tray"
run "variety"
run "xfce4-power-manager"
run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
# picom -b  --config ~/.config/raze-dwm/picom.conf &
xinput set-prop 10 'libinput Accel Speed' -0.45
run "numlockx on"
run "volumeicon"
run "flameshot"
run volnoti &
#run "picom" &
run slstatus &
sxhkd -c ~/.config/raze-dwm/sxhkd/sxhkdrc &
#run "nitrogen --restore"
~/.fehbg
#run applications from startup
#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"
