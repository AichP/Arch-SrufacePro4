#!/bin/bash
if [[ -z "$@" ]]; then
	sr -elvi | awk '{if (NR!=1) print $1}'
else
	coproc (sr -browser=firefox $1 $2 & >& /dev/null &)
fi
