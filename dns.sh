curl -s -X POST https://api.mnemonic.no/pdns/v3/search -H 'Content-Type: application/json' --data '{"query":"ip"}' | jq | egrep "query" | awk -F: '{print $2 }' | cut -d'"' -f2
