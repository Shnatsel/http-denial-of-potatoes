#!/bin/bash

(
    echo -e "HTTP/1.1 200 OK\r"
    echo -n "Huge-header: "
    yes A | tr -d '\n'
) | nc -l localhost 8080
