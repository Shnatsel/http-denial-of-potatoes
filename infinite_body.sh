#!/bin/bash

(
    echo -e "HTTP/1.1 200 OK\r
Content-Type: text/plain\r
Connection: close\r
\r"
    yes A | tr -d '\n'
) | nc -l localhost 8080
