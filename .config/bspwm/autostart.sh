#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
xrandr --output DisplayPort-0 --mode 3840x2160  --same-as eDP


eval "$(ssh-agent)"

$HOME/.config/polybar/launch.sh &

wmname LG3D &
#change your keyboard if you need it
#setxkbmap -layout be
#setxkbmap -model pc105 -layout us,ru -variant qwerty -option grp:ctrl_shift_toggle

#let Caps be Control
#xmodmap -e 'keycode 66 = Control_L'
#xmodmap -e 'clear Lock'
#xmodmap -e 'add Control = Control_L'
setkbd

#feh --bg-scale ~/.config/bspwm/wall.png &

xsetroot -cursor_name left_ptr &
unclutter &
sxhkd &

run pamac-tray &
run nm-applet &
blueman-applet &
run xfce4-power-manager &
run xfce4-clipman &

st -e sudo /usr/sbin/modprobe snd_hda_intel
st -e /home/kondrashov/Downloads/forticlientsslvpn/64bit/forticlientsslvpn_cli --server truevpn.truecaller.com:443 --vpnuser kostya.kondrashov --keepalive &

slack &
telegram-desktop &
#systemd-run --scope -p MemoryLimit=500M -p CPUQuota=50% --user firefox &
google-chrome &


#run VBoxClient-all &
#numlockx on &
#blueberry-tray &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#if not run by systemd at login
#/usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd &
(st tmux) &
