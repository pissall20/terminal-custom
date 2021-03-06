source ~/.antigen.zsh

# PATH EXPORTS
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# plugins with oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle z
antigen bundle docker
antigen bundle fzf
antigen bundle golang
antigen bundle brew
antigen bundle docker-compose
antigen bundle pyenv
antigen bundle python
antigen bundle tmux
antigen bundle virtualenv
antigen bundle zsh-docker-aliases
antigen bundle colored-man-pages
antigen bundle colorize



# external plugins
antigen bundle bossjones/boss-git-zsh-plugin
antigen bundle joel-porquet/zsh-dircolors-solarized.git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle unixorn/git-extra-commands
antigen bundle chrissicool/zsh-256color
antigen bundle psprint/zsh-navigation-tools
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zsh-users/zsh-syntax-highlighting # must be last plugin to get effect

# Powerlevel9k settings

# Plugin configuration that goes before initialization
POWERLEVEL9K_MODE='nerdfont-complete'
#P9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( \
  # operating environment
  os_icon root_indicator context dir vcs \
  # runtime environment
  background_jobs status \
  )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( \
  go_version \
  node_version \
  pyenv \
)

P9K_VI_MODE_INSERT_STRING='I'
# I'm not interested in knowing `whoami`
DEFAULT_USER="$(whoami)"

# theme
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen theme agnoster

# apply config
antigen apply

# SET ALIASES
alias py='python'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'


