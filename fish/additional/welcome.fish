clear
set_color red --bold
echo "  ___ ___                __              .___"
echo " /   |   \\_____    ____ |  | __ ____   __| _/"
echo "/    ~    \\__  \\ _/ ___\\|  |/ // __ \\ / __ | "
echo "\\    Y    // __ \\\\  \\___|    <\\  ___// /_/ | "
echo " \\___|_  /(____  /\\___  >__|_ \\\\___  >____ | "
echo "       \\/      \\/     \\/     \\/    \\/     \\/ "
set_color normal
echo -e "\n"
echo "Current time            $(date '+%A, %B %d, %Y at %I:%M %p')"
echo "Operating System        $(uname -s) $(uname -r)"
echo -e "\n"
echo "Welcome back, $USER"
echo -e "\n"

# Disable fish greeting
set -g fish_greeting

