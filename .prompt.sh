# prompt colors and git branch
source .git-prompt.sh
PS1='\[\e[0;92m\]\h: \[\e[1;93m\]\W \[\e[0;95m\]\u\[\e[1;91m\]$(__git_ps1) \[\e[0;92m\]$\[\e[0;96m\] ' 
