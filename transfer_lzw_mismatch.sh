#!/bin/bash
SOCAT=$(which socat 2>/dev/null)
[ -z "$SOCAT" ] && (echo "socat not found. Try installing the socat package."; exit 2)
set -e

echo -ne "HTTP/1.1 20O OK\r
Content-Type: text/plain\r
Content-Length: 1122\r
Connection: close\r
Transfer-Encoding: compress
\r
It is with humility really unassumed — it is with a sentiment even of awe — that I pen the opening sentence of this work: for of all conceivable subjects I approach the reader with the most solemn — the most comprehensive — the most difficult — the most august.

What terms shall I find sufficiently simple in their sublimity — sufficiently sublime in their simplicity — for the mere enunciation of my theme?

I design to speak of the Physical, Metaphysical and Mathematical — of the Material and Spiritual Universe: — of its Essence, its Origin, its Creation, its Present Condition and its Destiny. I shall be so rash, moreover, as to challenge the conclusions, and thus, in effect, to question the sagacity, of many of the greatest and most justly reverenced of men. [page 8:]

In the beginning, let me as distinctly as possible announce — not the theorem which I hope to demonstrate — for, whatever the mathematicians may assert, there is, in this world at least, no such thing as demonstration — but the ruling idea which, throughout this volume, I shall be continually endeavoring to suggest.
" | socat -t1800 -T1800 TCP-L:8080,reuseaddr,shut-none STDIO
