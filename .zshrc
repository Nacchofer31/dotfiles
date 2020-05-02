source ~/powerlevel10k/powerlevel10k.zsh-theme

# Fix the Java Problem
export _JAVA_AWT_WM_NONREPARENTING=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Manual configuration
PATH=/home/igfersa/bin:/home/igfersa/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# Manual aliases
alias ls='lsd --group-dirs=first'
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'

alias vim='nvim'

alias cat='bat'

SAVEHIST=1000
HISTFILE=~/.zsh_history

# Manual plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

neofetch
