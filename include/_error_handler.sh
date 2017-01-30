##
# _error_handler - interactively trap errors
#

trap err_func ERR
function err_func() {
	echo -e "\e[1;31m=> Previous command exited unsuccessfully. Press any key to continue.\e[0m"
	read -n 1
}
