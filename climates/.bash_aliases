#!/usr/bin/env bash

# Allow aliases to be with sudo
alias sudo="sudo "

# Easily refresh the shell by sourcing .bash_profile
alias refresh="source ~/.bash_profile"

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias -- -="cd -"

# Common commands
alias g="git"
alias h="history"

# Git commands
alias gst="git status"
alias gc="git commit --verbose"
alias gco="git checkout"
alias ga="git add"
alias gr="git reset"
alias gl="git log"
alias gd="git diff"

# List dir contents aliases
# ref: http://ss64.com/osx/ls.html
# Color
alias ls="ls -G"
# Long form no user group, color
alias l="ls -oG"
# Order by last modified, long form no user group, color
alias lt="ls -toG"
# List all except . and ..., color, mark file types
alias lsa="ls -AGF"
# List all except . and ..., color, mark file types, long form no user group, file size
alias ll="ls -AGFoh"
# List all except . and ..., color, mark file types, long form no use group, order by last modified, file size
alias lat="ls -AGFoth"

# Concatenate and print content of files (add line numbers)
alias catn="cat -n"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

# Ruby commands
alias be="bundle exec"
