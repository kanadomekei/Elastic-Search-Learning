#!/bin/sh -xeu
set -o pipefail

redis-server --daemonize yes

bootstrap --config schema.json
pgsync --config schema.json --daemon