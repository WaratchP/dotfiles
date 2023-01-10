# system
alias shutdown='sudo shutdown now'
alias restart='sudo reboot'

# quality of life
alias sudo="sudo "
alias plmx="pulsemixer"

# ls
alias ls='ls --color=auto'
alias lsl='ls -l'
alias ll='ls -lahF'
alias lls='ls -lahFtr'
alias la='ls -A'
alias l='ls -CF'

# cp
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -i'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# pacman
alias paci='sudo pacman -S'               # install
alias pachi='sudo pacman -Ql'             # Pacman Has Installed - what files where installed in a package
alias pacs='sudo pacman -Ss'              # search
alias pacu='sudo pacman -Syu'             # update
alias pacr='sudo pacman -R'               # remove package but not dependencies
alias pacrr='sudo pacman -Rs'             # remove package with unused dependencies by other softwares
alias pacrc='sudo pacman -Sc'             # remove pacman's cache
alias pacro='pacman -Rns $(pacman -Qtdq)'
alias pacrl='rm /var/lib/pacman/db.lck'   # pacman remove locks
alias pacls="sudo pacman -Qe"
alias pacc='sudo pacman -Sc'
alias paccc='sudo pacman -Scc'            # empty the whole cache
alias pacaur="pacman -Qem | expac --timefmt=\"%F %T\" \"[%l] $(printf '\033[1;34m')%n$(printf '\033[0m') (%v)\" - | sort -k1"
alias pacbse="pacman -Qen | expac --timefmt=\"%F %T\" \"[%l] $(printf '\033[1;34m')%n$(printf '\033[0m') (%v)\" - | sort -k1"

# yay
alias yayi='yay -S'     # install
alias yayhi='yay -Ql'   # Yay Has Installed - what files where installed in a package
alias yays='yay -Ss'    # search
alias yayu='yay -Syu'   # update
alias yayr='yay -R'     # remove package but not dependencies
alias yayrr='yay -Rs'   # remove package with unused dependencies by other softwares
alias yayrc='yay -Sc'   # remove yay's cache
alias yayls="yay -Qe"

# nvim
alias svim='sudoedit'
alias dvim="vim -u /usr/share/nvim/archlinux.vim" # nvim with default config
alias nvimc='rm -I $VIMCONFIG/swap/*'             # clean nvim swap file
alias nvimcu='rm -I $VIMCONFIG/undo/*'            # clean the vim undo
alias nviml='nvim -w $VIMCONFIG/vimlog "$@"'      # log the keystrokes 
alias nvimd='nvim --noplugin -u NONE'             # launch nvim without any plugin or config (nvim debug)
alias nvimfr='nvim +e /tmp/scratchpad.md +"set spelllang=fr"'

# git
alias gs='git status'
alias gss='git status -s'
alias ga='git add'
alias gp='git push'
alias gpraise='git blame'
alias gpo='git push origin'
alias gpt='git push --tag'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias grb='git branch -r'                                                                           # display remote branch
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log --pretty=oneline'
alias gr='git remote'
alias grs='git remote show'
alias glol='git log --graph --abbrev-commit --oneline --decorate'
alias gclean="git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d" # Delete local branch merged with master
alias gblog="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:red)%(refname:short)%(color:reset) - %(color:yellow)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:blue)%(committerdate:relative)%(color:reset))'"                                                             # git log for each branches
alias gsub="git submodule update --remote"                                                        # pull submodules
alias gj="git-jump"                                                                               # Open in vim quickfix list files of interest (git diff, merged...)

alias dif="git diff --no-index"                                                                   # Diff two files even if not in git repo! Can add -w (don't diff whitespaces)

# tmux
alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach -t'
alias tmuxl='tmux list-sessions'

# docker
alias dockls="docker container ls | awk 'NR > 1 {print \$NF}'"                  # display names of running containers
alias dockRr='docker rm $(docker ps -a -q)'                                     # delete every containers / images
alias dockRr='docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'   # delete every containers / images
alias dockstats='docker stats $(docker ps -q)'                                  # stats on images
alias dockimg='docker images'                                                   # list images installed
alias dockprune='docker system prune -a'                                        # prune everything
alias dockceu='docker-compose run --rm -u $(id -u):$(id -g)'                    # run as the host user
alias dockce='docker-compose run --rm'

# mdBook
alias mdbuild="mdbook build --open"
alias mdwatch="mdbook watch --open"
alias mdserve="mdbook serve --open --hostname 127.0.0.1 --port 10000"
alias mdclean="mdbook clean"

# gpu
alias oglr="glxinfo | grep -iE 'vendor:|device:|version:'"

# de/wm
alias swaystart='~/.config/bin/sway'

# taskwarrior
alias in='task add gtdList:in'

tickle () {
  deadline=$1
  shift
  in +tickle wait:$deadline $@
}

alias tick='tickle'
alias think='tickle +1d'

# ncmpcpp
alias music='tmux new-session -s $$ "tmux source-file ~/.config/ncmpcpp/tsession"'
