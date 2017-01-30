##
# _error_handler - interactively trap errors
#

trap _error_handler ERR
function _error_handler() {
	echo -e "\e[1;31m=> Previous command exited unsuccessfully. Press any key to continue.\e[0m"
	read -n 1
}
