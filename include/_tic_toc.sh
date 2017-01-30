declare -A _TICTOC

##
# tic - start time tracker
#
# Usage: tic [KEY]
#
function tic() {
	_TICTOC[${1:-default}]=$(date +%s)
}

##
# toc - stop and return tracked time
#
# Usage: toc [KEY]
#
function toc() {
	return $(($(date +%s) - _TICTOC[${1:-default}]))
}

