source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

#Productivity
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle extract
antigen bundle pass
#antigen bundle safe-paste

#Build tools
antigen bundle docker

#Distro-related
antigen bundle archlinux

#Misc
antigen bundle nyan

#zsh-users repo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions

# Other repos

antigen bundle keithhamilton/oh-my-dogesh
antigen bundle arzzen/calc.plugin.zsh
antigen bundle MichaelAquilina/zsh-you-should-use

#antigen theme bureau

SPACESHIP_TIME_SHOW=true
SPACESHIP_KUBECONTEXT_SHOW=false
antigen theme denysdovhan/spaceship-zsh-theme spaceship

#antigen theme landongn/zshcomrade

antigen apply

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export EDITOR=/usr/bin/nvim

#GoPass completion

source <(gopass completion zsh)
