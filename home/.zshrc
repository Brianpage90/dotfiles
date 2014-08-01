######################################################
#                                                    #
# sources for more modukes                           #
# https://github.com/sorin-ionescu/prezto            #
# https://github.com/robbyrussell/oh-my-zsh/         #
#                                                    #
######################################################

source ~/tools/antigen/antigen.zsh
[ -e "${HOME}/.zsh_env" ] && source "${HOME}/.zsh_env"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle lein
antigen bundle command-not-found
antigen bundle history
antigen bundle tmux
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zaw

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

[ -e "${HOME}/.zshrc.alias" ] && source "${HOME}/.zshrc.alias"
[ -e "${HOME}/.zshrc.local" ] && source "${HOME}/.zshrc.local"
