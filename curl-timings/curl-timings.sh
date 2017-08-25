#!/usr/bin/env bash

/usr/bin/curl  --location --write-out '
 url_effective       %{url_effective}
 http_code           %{http_code}
 remote_ip           %{remote_ip}
 num_connects        %{num_connects}
 num_redirects       %{num_redirects}
 time_namelookup     %{time_namelookup}
 time_appconnect     %{time_appconnect}
 time_connect        %{time_connect}
 time_redirect       %{time_redirect}
 time_pretransfer    %{time_pretransfer}
 time_starttransfer  %{time_starttransfer}
 time_total          %{time_total}
 ' \
 --output /dev/null \
 --silent ${1}
