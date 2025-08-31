# adding nvim to path
export PATH="/opt/nvim-linux64/bin:$PATH"

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

# this is to automatically switch node versions
function cd
  echo "$is_nvmrc_path"
  builtin cd $argv
  if test -f .nvmrc
    nvm use
  else if test $nvm_current_version != $nvm_default_version
    nvm use default
  end
end

zoxide init fish | source

export FORGIT_COPY_CMD='xclip -selection clipboard'
