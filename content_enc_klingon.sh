#!/bin/bash
SOCAT=$(which socat 2>/dev/null)
[ -z "$SOCAT" ] && (echo "socat not found. Try installing the socat package."; exit 2)
set -e

echo -ne "HTTP/1.1 20O OK\r
Content-Type: text/plain\r
Content-Length: 466\r
Connection: close\r
Content-Encoding: klingon
\r
— — jatlhbe'taHbogh ghu'vam, vaj ngeDqu'bogh law', tangq — — —a' targhmey'e' vISov.

— — ghu'vammo' qatlh mInDu' vISovbogh nuq?

'ej vaj vIpoSmoHchu' jIHvaD neH tIpwIj, — — 'eSpInSa' ghe''or je, qonta'bogh qamDu'Daj je. qaStaHvIS poHmey, mudevtaHvIS, qar'a'?

— — — 'ach yuQmey vIghajbe', 'ach qechmey'e' vI'ang jIvumtaH 'e' vInIDmeH, 'ej jIvumtaHvIS, pagh, jIvumtaHvIS 'e' vIchIDmeH, pagh vIvumlu'chu'mo' 'e' vInIDmeH, pagh vImuSHa'chu'mo'.
" | socat -t1800 -T1800 TCP-L:8080,reuseaddr,shut-none STDIO
