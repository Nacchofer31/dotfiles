#!/bin/sh

curl https://corona-stats.online/es > ~/.cache/corona 2>/dev/null
grep "Spain" ~/.cache/corona | sed "s/\s*//g ; s/║//g ; s/│/;/g" | awk -F';' '{print ("") $3 ("(") $4 (")") (" ") $5 ("(") $6 (")")}' | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
