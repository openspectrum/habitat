#
# ENV SETTINGS
# ------------
source ~/.env

#
# SHELL OPTIONS
# -------------
source ~/.bash_options

#
# PATH MANAGEMENT
# ---------------
source ~/.bash_paths

#
# SHELL CONFIG
# ------------
source ~/.bash_config

#
# COMMAND ALIASES
# ---------------
source ~/.bash_aliases

#
# COMMAND COMPLETION
# ------------------
source ~/.bash_completion

#
# PROMPT SETTINGS
# ---------------
source ~/.bash_prompt

#
# SOFTWARE CONFIGURATION
# ----------------------

# Homebrew bash completion
. $(brew --prefix)/etc/bash_completion

# Set inbox folder
export INBOX=~/Dropbox/_in/

# Set up rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load autojump
[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh

# NPM login config
export NPM_AUTH_TOKEN=$(cat $HOME/.npmrc | grep _authToken | cut -d '=' -f2)

# Configure nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Node config
PATH="$PATH:./node_modules/.bin"; export PATH

# Mongo Config
PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"; export PATH

# Yarn config
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
