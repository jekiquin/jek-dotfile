# adding nvim to path
export PATH="/opt/nvim-linux-x86_64/bin:$PATH"

# adding fd and bat to path via symlink
export PATH="$HOME/.local/bin:$PATH"

# setting up fzf
fzf --fish | source

zoxide init fish | source

export FORGIT_COPY_CMD='xclip -selection clipboard'

