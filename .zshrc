# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#export TERM="xterm-256color"
#export TERM="xterm-kitty"
#export TERM=screen-256color

#; Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Run spectrum_ls to see a list of colors zsh can easily produce and
# which can be used in a theme
#ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#source /Users/muhrizkiakbar/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
#ZSH_THEME="shades-of-purple"
#ZSH_THEME="dracula"
ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER='whoami'

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"
#unsetopt correct_all

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration


export EDITOR='nvim'

# Load private keys
#source ~/dotfiles/secret-keys.sh
# Load aliases
#source ~/dotfiles/aliases.sh

# Load in fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use ripgrep to get list of files over find, search hidden files, follow symlinks
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{.git,package-lock.json}"'

# Type "fd" to open a directory using fzf
fd() {
	local dir
	dir=$(find ${1:-.} -path '*/\.*' -prune \
		-o -type d -print 2> /dev/null | fzf +m) &&
		cd "$dir"
}


# Type "fo" to open a file in its default application by hiting ctrl + o when
# the file is selected
fo() {
	x=$(preview)
	folder_path=$(echo $x | cut -d '.' -f 1,1 | rev | cut -d "/" -f2- | rev);
	cd $folder_path
	nvim $(echo $x | rev | cut -d '/' -f 1,1 | rev)
}


# Helper function to remove/putback work npmrc file
npmrc() {
    if [[ -f ~/.npmrc ]]; then
        mv ~/.npmrc ~/temp.npmrc
		echo "temp.npmrc"
    elif [[ -f ~/temp.npmrc ]]; then
        mv ~/temp.npmrc ~/.npmrc
		echo ".npmrc"
    fi

}

#####################################################################################
### Powerlevel 9k Settings - https://github.com/bhilburn/powerlevel9k - NOTE: I'm using powerlevel10k
#####################################################################################
source $HOME/.p10k.zsh

POWERLEVEL10K_MODE='nerdfont-complete'
POWERLEVEL10K_PROMPT_ON_NEWLINE=true
POWERLEVEL10K_PROMPT_ADD_NEWLINE=false
POWERLEVEL10K_SHORTEN_DIR_LENGTH=3
POWERLEVEL10K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL10K_RVM_BACKGROUND="black"
POWERLEVEL10K_RVM_FOREGROUND="249"
POWERLEVEL10K_RVM_VISUAL_IDENTIFIER_COLOR="blue"
POWERLEVEL10K_RVM_BACKGROUND="black"
POWERLEVEL10K_RVM_FOREGROUND="249"
POWERLEVEL10K_TIME_BACKGROUND="blue"
POWERLEVEL10K_TIME_FOREGROUND="black"
POWERLEVEL10K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL10K_STATUS_VERBOSE=false
POWERLEVEL10K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL10K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL10K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL10K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL10K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL10K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL10K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL10K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL10K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL10K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL10K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL10K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL10K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
POWERLEVEL10K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL10K_FOLDER_ICON=''
POWERLEVEL10K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL10K_STATUS_VERBOSE=false
POWERLEVEL10K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL10K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL10K_CUSTOM_DOCKER_SIGNAL="zsh_docker_signal"
POWERLEVEL10K_CUSTOM_INTERNET_SIGNAL="zsh_internet_signal"
POWERLEVEL10K_BATTERY_CHARGING='yellow'
POWERLEVEL10K_BATTERY_CHARGED='green'
POWERLEVEL10K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL10K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL10K_BATTERY_LOW_COLOR='red'
POWERLEVEL10K_BATTERY_ICON='\uf1e6'
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(dir vcs root_indicator dir_writable docker_machine)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status background_jobs load user)
#POWERLEVEL10K_USER_ICON="%F{blue}\uF415" # 
#POWERLEVEL10K_ROOT_ICON="#"
#POWERLEVEL10K_SUDO_ICON=$'\uF09C' # 
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT=true

#################################################
### Colorize Man pages
#################################################

export MANROFFOPT='-c'
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
#export PATH="$HOME/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/bin:/usr/local/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

unset DOCKER_TLS_VERIFY
unset DOCKER_CERT_PATH
unset DOCKER_MACHINE_NAME
unset DOCKER_HOST


source $ZSH/oh-my-zsh.sh

plugins=(git tmux )


#
#alias solar ="cd /Users/diskominfo/Project/rails_dev/ && docker-compose run --rm --service-ports solar" 
alias gc="git commit -a"
alias gp="git push"
alias gpull="git pull"
alias gcm="git checkout master"
alias gf="git fetch"

alias kubedb_forward='kubectl port-forward svc/postgres 5433:5432 -n performance-testing'
alias kubedb_dump='pg_dump -h localhost -p 5433 -U happy5 happy5_performance --no-owner --no-acl --schema=happy5 > dump-dev.sql'
alias gtags='ctags -R --languages=ruby --exclude=.git --exclude=log --exclude=tmp . $(bundle list --paths)'
alias keymon='key-mon --visible_click'

alias kubelist='kubectl get pods -n performance-testing'

alias sc='$HOME/.local/bin/flameshot-imgck'

function gemtags(){
  ctags -R -f gems.tag * ~/.rvm/gems/ruby-"$1"/gems
}
  #ctags -R -f gems.tag * ~/.rbenv/versions/"$1"/lib

#alias kubedev='kubectl exec -it performance-api-67b94f7bd6-pzlqk -n performance-testing -- bash'
function kubedev(){
        kubectl exec -it "$1" -n performance-testing -- bash
}

function bo() {
  BUNDLER_EDITOR=nvim bundle open $1
}

alias randomreset= "git checkout dev/random.1-4 && git fetch origin && git reset --hard origin/dev/random.1-4"
alias pulldevelop= "git pull origin develop"
alias mergedevelop= "git merge origin develop" 

alias editalias="vim ~/.zshrc"
alias androidstudio= "export _JAVA_AWT_WM_NONREPARENTING=1; export STUDIO_JDK=/usr/lib/jvm/java-14-openjdk; /opt/android-studio/bin/studio.sh"

function gcb(){
    if [ "$1" != "" ]
    then
        git checkout "$1" # default commit message is `update`
    else
        git branch
    fi # closing statement of if-else block
}

function ga() {
    #mengembalikan setup database yml ke semula
    #rm -rf ./config/database.yml
    rm -rf $HOME/Project/Performance-API/config/database.yml
    cp $HOME/Project/happy5-env/database.yml.default $HOME/Project/Performance-API/config/database.yml
    
    #exec the git command
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1" # sesuaikan pesan komit yang di ingin kan
    else
        git commit -m update # default commit message is `update`
    fi 
    git push

    #mengambil ulang setup database milik sendiri
    rm -rf $HOME/Project/Performance-API/config/database.yml
    cp $HOME/Project/happy5-env/database.yml.mysetup $HOME/Project/Performance-API/config/database.yml
}

function gall() {
    #exec the git command
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1" # sesuaikan pesan komit yang di ingin kan
    else
        git commit -m update # default commit message is `update`
    fi 
    git push

}

if [ "$TMUX" = "" ]; then tmux; fi
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

source /etc/profile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH="/Users/muhrizkiakbar/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/muhrizkiakbar/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/muhrizkiakbar/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/muhrizkiakbar/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/muhrizkiakbar/perl5"; export PERL_MM_OPT;

source "$HOME/.rvm/scripts/rvm"
