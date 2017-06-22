#!/bin/sh

# prints out project version

find_regex() {
	fname=$1
	pat=$2
	repl=$3
	while read line; do
		repl=$(echo "$line" | perl -pe "s/$pat/\$repl/")
		if [ "$line" = "$repl" ]; then
			continue
		else
			echo $repl
			break
		fi
	done < $fname
}

v1=$(find_regex "src/version.h" "#define\s+NEUROCOIN_VERSION_MAJOR\s+" "$1")
v2=$(find_regex "src/version.h" "#define\s+NEUROCOIN_VERSION_MINOR\s+" "$1")
v3=$(find_regex "src/version.h" "#define\s+NEUROCOIN_VERSION_REVISION\s+" "$1")
echo $v1.$v2.$v3