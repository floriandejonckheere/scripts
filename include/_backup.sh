##
# _backup - rsync backup function
#
# Usage: _backup SOURCE DEST [ARGS]
#
function backup() {
	set -x
	_ARGS=$3

	rsync -av ${_ARGS} \
		--progress --delete-after --inplace --partial --append-verify --delete-excluded \
		--exclude .local/share/Trash \
		--exclude .thumbnails \
		--exclude .cache \
		--exclude '.AndroidStudio*' \
		--exclude .npm \
		--exclude .bundle \
		--exclude .gem \
		--exclude .rvm \
		--exclude node_modules \
		--exclude .node_modules \
		--exclude vendor/components \
		--exclude vendor/bundle \
		--exclude bower_components \
		--exclude public/assets \
		--exclude 'Videos' \
		--exclude 'VirtualBox VMs' \
		\
		${1} \
		${2}
	set +x
}
