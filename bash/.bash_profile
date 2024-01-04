# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
NORMAL="\e[1;49;0m"
GREEN="\e[1;49;32m"
RED="\e[1;49;31m"
BLUE="\e[1;49;34m"
CYAN="\e[1;49;36m"
PURPLE="\e[1;49;35m"
BROWN="\e[1;49;33m"
LTGRAY="\e[1;49;37m"
DKGRAY="\e[1;49;30m"
LTBLUE="\e[1;49;34m"
LTGREEN="\e[1;49;32m"
LTRED="\e[1;49;31m"
LTPURPLE="\e[1;49;35m"
YELLOW="\e[1;49;33m"
WHITE="\e[1;49;37m"

###  Aliases  ##########################
alias cda='cd ~/ansible'
alias s='openssl x509 -noout -text -in '
alias ll='ls -lh'
alias la='ls -lah'

###  Set up prompt ######################
NUMUSE=$(who | wc -l)
#### Determine uptime days  ############
DAYS=$(uptime | awk '{print $3}')
if ( uptime | awk '{print $4}' | grep -v day &>/dev/null ); then
  DAYS=0
fi
if (( ${DAYS} == 0 )); then
  UP="${GREEN}up less than a day"
elif (( ${DAYS} < 90 )); then
  UP="${GREEN}$(uptime | awk '{print $2 " " $3 " " $4}')"
elif (( ${DAYS} < 120 )) ; then
  UP="${YELLOW}$(uptime | awk '{print $2 " " $3 " " $4}')"
elif (( ${DAYS} > 120 )); then
UP="${RED}$(uptime | awk '{print $2 " " $3 " " $4}')"
fi

#### Print redhat-release  #############
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo -e "${CYAN}$(cat /etc/redhat-release) ${NORMAL}"
fi

####  PROMPT  ###########################
PS1="${CYAN}\h:${GREEN}\w$ ${NORMAL}"

#### Always print #######################
#echo -e "\n${OS}     ${PLATFORM}     ${UP}          ${CYAN}${NUMUSE} users${NORMAL}"
echo -e "${UP}          ${CYAN}${NUMUSE} users${NORMAL}"

#### Check full drives  #################
if ( df -h | grep "[9][0-9]%\|100%" ) &>/dev/null; then
echo -e "${YELLOW}*** DRIVES NEAR CAPACITY ***\n$( df -h | grep -E '[9][0-9]%|100%' | awk '{print $5 " " $6}' )${NORMAL}"
fi

####  Check for logged in users  ########
if (($NUMUSE > 1 )); then
echo -e "${PURPLE}*** YOU ARE NOT ALONE ***\n$(w | tail -n +3 | awk '{print $1}')${NORMAL}"
fi
zsh
