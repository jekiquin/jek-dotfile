# adding nvim to path
export PATH="/opt/nvim-linux-x86_64/bin:$PATH"

# adding fd and bat to path via symlink
export PATH="$HOME/.local/bin:$PATH"

# setting up fzf
fzf --fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jekiquin/anaconda3/bin/conda
    eval /home/jekiquin/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

zoxide init fish | source

export FORGIT_COPY_CMD='xclip -selection clipboard'

set --universal nvm_default_version lts
