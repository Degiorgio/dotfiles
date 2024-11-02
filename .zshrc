alias python=python3.12
alias vim=nvim

export ZSH="$HOME/.oh-my-zsh"
export TASK_X_REMOTE_TASKFILES=1

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(git fzf golang kubectl colorize  fzf-dir-navigator zsh-cwd autoswitch_virtualenv )
