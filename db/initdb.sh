#!/bin/bash -xeu
set -o pipefail

psql -v ON_ERROR_STOP=1 <<- _EOT_
	CREATE TABLE IF NOT EXISTS public.sample (id integer PRIMARY KEY, value text);
_EOT_