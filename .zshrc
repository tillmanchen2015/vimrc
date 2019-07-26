alias er='vim ~/.zshrc' #editrc
alias ev='vim ~/.vimrc' #editvimrc
alias em='vim ~/.vim/after/plugin/myconfig.vim'
alias rr='source ~/.zshrc;echo "zshrc was refreshed"' #refreshrc
alias d='cd /dbc/pek2-dbc302/caiqi' #data dir
alias tmp='cd /dbc/pek2-dbc302/caiqi/tmp'
alias bin='cd /dbc/pek2-dbc302/caiqi/bin'
alias src='cd /dbc/pek2-dbc302/caiqi/src'
alias dn='echo "data dir is: /dbc/pek2-dbc302/caiqi""' #data dir name
alias hn='echo "home idr is:"/mts-pek/home/caiqi""' #home name
alias sb='gobuild sandbox queue vddk' #sandbox build
alias et='vim ~/.tmux.conf'
alias csdb='find `pwd` -type f -name "*.h" -o -name "*hc" -o -name "*.cc" -o -name "*.cpp" > cscope.files; cscope -bqk'
#alias csdb='find `pwd` \( \( -iname "*.c" -o -iname "*.cc" -o -iname "*.h" -iname "*.cpp" \) -and \( -not -type l \) \) -print > cscope.files
#find `pwd` \( \( -iname "*.c" -o -iname "*.cc" -o -iname "*.h" \) -and -type l \) -printf "%l\n"  >> cscope.files
#cscope -bqk
#'
alias vcip='echo 10.161.81.124'

export TCROOT=/build/mts/toolchain
export JAVA_HOME=$TCROOT/lin64/jdk-1.8.0_212
#export PATH=/dbc/pek2-dbc302/caiqi/bin/vim/bin:/mts/git/bin:/build/toolchain/lin32:/mts/git/tools/bin:/build/apps/bin:/build/toolchain/lin32/python-2.6.1/bin:/build/trees/bin:/usr/lib64/qt-3.3/bin:/opt/quest/sbin:/opt/quest/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:$TCROOT/noarch/ant-1.7.0-1/bin:$TCROOT/noarch/apache-maven-2.2.0/bin
export PATH=/mts/git/bin:/mts/git/tools/bin::$TCROOT/lin64/bin:$TCROOT/lin64:$HOME/bin:/build/apps/bin:$PATH
export PATH=/dbc/pek2-dbc302/caiqi/bin/vim/bin:$PATH
export PATH=/dbc/pek2-dbc302/caiqi/bin/python/bin:$PATH
export PATH=/dbc/pek2-dbc302/caiqi/bin:$PATH
export PATH=/dbc/pek2-dbc302/caiqi/bin/ctags/bin:$PATH
#export PATH=/dbc/pek2-dbc302/caiqi/bin/git/bin:$PATH
#export PATH=/dbc/pek2-dbc302/caiqi/bin/git/libexec/git-core:$PATH

export PATH=$PATH:/dbc/pek2-dbc302/caiqi/bin/cdbug

export P4PORT=perforce.eng.vmware.com:1666
alias clt='source $HOME/bin/p4clients.sh'

export P4CONFIG=.p4config
export DATADIR=/dbc/pek2-dbc302/caiqi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="steeef"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files

plugins=(
 git
 z
 extract
 up
)
 source $ZSH/oh-my-zsh.sh
