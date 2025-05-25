# Setup TERM for 256 color support
export TERM="xterm-256color"

# Initialize Completion System
autoload -Uz compinit
compinit

# Configuring Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# Set default terminal
export TERMINAL=kitty

# Zoxide configuration
export _ZO_ECHO=1
export _ZO_MAXAGE=10000
eval "$(zoxide init zsh)"

# History Setup
HISTFILE=$HOME/.zsh_history
SAVEHIST=10000
HISTSIZE=10000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

# Key bindings
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Zsh autosuggestions configuration
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^ ' autosuggest-accept

# Load Zsh Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases for zoxide
alias cd="z"
alias zz="z -"
alias zi="zi"
alias zl="z -l"

# Setup NPM Global Packages Location
export PATH=~/.npm-global/bin:$PATH

# Zsh syntax highlighting configuration (must be after sourcing the plugin)
ZSH_HIGHLIGHT_STYLES[default]="none"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[alias]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[path]="fg=blue,underline"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red,bold"

# Load Angular CLI autocompletion
# source <(ng completion script)

# Set default working directory for terminal
[[ $PWD == $HOME ]] && cd ~/Code && clear
