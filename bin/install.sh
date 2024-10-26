#!/bin/bash
set -eu

$(dirname $0)/install-from-repos.sh

$(dirname $0)/install-config.sh
