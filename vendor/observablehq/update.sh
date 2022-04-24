#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function main() {
    dl runtime.js     @observablehq/runtime@4.18.7/dist/runtime.js
    dl inspector.css  @observablehq/inspector@3.2.4/dist/inspector.css
}

function dl() {
    echo "downloading $1 from jsdelivr $2"
    local url="https://cdn.jsdelivr.net/npm/$2"
    curl --no-progress-meter $url > $SCRIPT_DIR/$1
}

main
