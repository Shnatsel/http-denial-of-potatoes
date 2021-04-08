#!/bin/bash

(
    echo -e "HTTP/1.1 200 OK\r"
    i=0
    while true; do
        echo -e "Header: foobar$i\r"
        ((i=i+1))
    done
) | nc -l localhost 8080
