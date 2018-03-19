source ~/.zplug/init.zsh
 
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
 
#Productivity
zplug "plugin/colored-man-pages", from:oh-my-zsh
zplug "plugin/command-not-found", from:oh-my-zsh
zplug "plugin/extract", from:oh-my-zsh
zplug "plugin/pass", from:oh-my-zsh
zplug "plugin/git", from:oh-my-zsh
 
#Build tools
zplug "plugin/docker", from:oh-my-zsh
 
#Distro-related
zplug "plugin/archlinux", from:oh-my-zsh
 
#Misc
zplug "plugin/nyan", from:oh-my-zsh
 
#zsh-users repo
zplug "zsh-users/zsh-syntax-highlighting", from:github
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-history-substring-search", from:github
zplug "zsh-users/zsh-completions", from:github
 
# Other repos
 
zplug "arzzen/calc.plugin.zsh", from:github
zplug "MichaelAquilina/zsh-you-should-use", from:github
 
autoload -Uz is-at-least
if is-at-least 5.0.6; then
	SPACESHIP_TIME_SHOW=true
	SPACESHIP_BATTERY_THRESHOLD=90
	zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
else
	zplug "themes/bureau", from:oh-my-zsh, as:theme
fi
 
zplug load
 
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
 
if [[ -f $(which helm) ]]; then
	source <(helm completion zsh)
fi
 
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export EDITOR=/usr/bin/vim
