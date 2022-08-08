if [[ -e ~/zsh/zsh-dracula ]]; then
    source ~/zsh/zsh-dracula
fi

### ===== Source manjaro-zsh-configuration ====# =
# if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#   source /usr/share/zsh/manjaro-zsh-config
# fi

if [[ -e ~/zsh/manjaro-zsh-config ]]; then
  source ~/zsh/manjaro-zsh-config
fi
### ===== end =====

### ===== Use manjaro zsh prompt =====
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

if [[ -e ~/zsh/manjaro-zsh-prompt ]]; then
  source ~/zsh/manjaro-zsh-prompt
fi
### ===== end =====

# My stuff lies here... ---------------------------------------------------------------
export BASE='~'

keys() { xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'; }

# zsh stuff
ZSH_AUTOSUGGEST_STRATEGY=(history completion match_prev_cmd)

bindkey -v
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '^ ' autosuggest-accept  # ctrl + space | complete

# source my aliases
if [[ -e ~/zsh/alias.sh ]]; then
  source ~/zsh/alias.sh
fi

# For colorls dracula
source $(dirname $(gem which colorls))/tab_complete.sh
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# for fzf dracula
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
