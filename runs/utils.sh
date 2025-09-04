#!/usr/bin/env bash

log() {
	if [[ $dry == "1" ]]; then
		echo "[DRY_RUN]: $@"
	else
		echo "$@"
	fi
}

execute() {
	log "execute: $@"
	if [[ $dry == "1" ]]; then
		return
	fi
	"$@"
}

update_files() {
	from=$1
	to=$2

	pushd $from > /dev/null
	dirs=$(find . -maxdepth 1 -mindepth 1 -type d)
	for dir in $dirs; do
		execute rm -rf $to/$(basename "$dir")
		execute cp -r $dir $to/$(basename "$dir")
	done
	popd > /dev/null
}

copy() {
	log "removing: $2"

	execute rm "$2"
	execute cp "$1" "$2"
}
