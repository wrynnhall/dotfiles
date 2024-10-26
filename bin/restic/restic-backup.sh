#!/bin/bash

set -eu

restic backup \
	-r ~/restic-repo \
	--exclude-caches \
	--files-from $(dirname $0)/restic-include.txt \
	--password-file $(dirname $0)/restic-password.txt


