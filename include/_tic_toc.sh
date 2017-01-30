declare -A _TICTOC

##
# _tic - start time tracker
#
# Usage: _tic [KEY]
#
function _tic() {
	_TICTOC[${1:-default}]=$(date +%s)
}

##
# _toc - stop and return tracked time
#
# Usage: _toc [KEY]
#
function _toc() {
	return $(($(date +%s) - _TICTOC[${1:-default}]))
}

