#Disable bell
xset -b

#C-A-Bksp kills X
setxkbmap -option terminate:ctrl_alt_bksp

synclient VertScrollDelta=100
synclient HorizScrollDelta=-100

#xmodmap ~/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3
#exec startlxqt

