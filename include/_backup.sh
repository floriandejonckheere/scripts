##
# _backup - rsync backup function
#
# Usage: _backup SOURCE DEST [ARGS]
#
function backup() {
	_SRC=$1
	_DST=$2
	shift; shift

	set -x
	rsync -aAXv $@ \
		--progress --stats --delete-after --inplace --partial --append-verify --delete-excluded \
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
		--exclude /proc \
		--exclude /sys \
		--exclude /dev \
		--exclude /mnt \
		--exclude /shm \
		--exclude /tmp \
		--exclude /run \
		--exclude /media \
		--exclude /lost+found \
		\
		${_SRC} \
		${_DST}
	set +x
}
