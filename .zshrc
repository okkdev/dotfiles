#ALIAS

alias ls="exa"
alias vim="nvim"

#FUNCTIONS

# wallpaper switch trick stolen from github.com/Jarvvski
night() {
    # change menu bar to dark and speed up the wallpaper switching
    osascript scripts/menudark.scpt

    # change wallpaper to night (you need to create the "current" folder and set it to cycle its contents as wallpapers in your settings)
    rm current/day.png 2> /dev/null
    cp pictures/night.png current/night.png

    # changes iTerm profile to "night" (you need to create a profile called "night")
    echo -e "\033]1337;SetProfile=night\a";
}

day() {
    # change menu bar to light and speed up the wallpaper switching
    osascript scripts/menulight.scpt

    # change wallpaper to day
    rm current/night.png 2> /dev/null
    cp pictures/day.png current/day.png

    # changes iTerm profile to "day" (you need to create a profile called "day")
    echo -e "\033]1337;SetProfile=day\a";
}

# function I use when I watch ASMR and want my macbook to go to sleep after specific amount of time
# just type "zzz" and the amount of seconds until you want your mac to go into sleep mode
zzz() {
    sleep $1 && osascript -e 'tell application "System Events" to sleep';
}
