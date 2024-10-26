#!/bin/bash
set -eu

$(dirname $0)/bin/install-from-repos.sh

$(dirname $0)/bin/install-config.sh
