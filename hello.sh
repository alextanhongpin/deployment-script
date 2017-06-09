# !/bin/sh
#
# Script Name
#
# Script description
#


# Colors
COLOR_OFF="\033[0m"   # unsets color to term fg color
RED="\033[0;31m"      # red
GREEN="\033[0;32m"    # green
YELLOW="\033[0;33m"   # yellow
MAGENTA="\033[0;35m"  # magenta
CYAN="\033[0;36m"     # cyan

printf "${GREEN}Deploying to production${COLOR_OFF}\n"


printf "${YELLOW}--->${COLOR_OFF} Stopping workers\n"
printf "${RED}Error due to something${COLOR_OFF}\n"


while getopts "h?vf:" opt; do
	case "$opt" in
	h|\?) echo help
		;;
	v) echo verbose
		;;
	f) echo some_file
		;;
	esac
done