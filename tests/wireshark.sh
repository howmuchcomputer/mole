#!/bin/bash

# mkfifo /tmp/remote
# ssh root@firewall "tcpdump -s 0 -U -n -w - -i eth0 not port 22" > /tmp/remote
# wireshark -k -i /tmp/remote

ssh -i tests/key -p 22122 mole@127.0.0.1 tcpdump -s 0 -U -n -w - -i eth0 'not port 22' | wireshark -k -i -
