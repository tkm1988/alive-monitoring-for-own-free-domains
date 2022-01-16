#!/bin/zsh
function http_alive_monitoring () {
    curl -X GET $1
}

http_alive_monitoring $1