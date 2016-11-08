printf '\33c\e[3J'

RED=`tput setaf 1`
BLUE=`tput setaf 4`
NOCOLOR=`tput sgr0`

BASEDIR=$(dirname "$0")
path1="prj.xcodeproj/xcuserdata"
path2="prj.xcworkspace/xcuserdata"

echo "${BLUE}[XCode cache files pruner, created by Deya Eldeen Elkhawaldeh]${NOCOLOR}"
echo "REMOVING ${NOCOLOR} $BASEDIR/${RED}$path1${NOCOLOR}"
rm -R "$BASEDIR/$path1/"
echo "REMOVING ${NOCOLOR} $BASEDIR/${RED}$path2${NOCOLOR}"
rm -R "$BASEDIR/$path2/"

echo "${BLUE}Done,${NOCOLOR}"

