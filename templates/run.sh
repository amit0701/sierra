#!/bin/bash
openstack overcloud deploy --templates \
-e /home/stack/sierra/templates/network-isolation.yaml \
-e /home/stack/sierra/templates/flexpod.yaml \
-e /home/stack/sierra/templates/net-vlans.yaml \
--control-flavor control --compute-flavor compute  \
--compute-scale 1 --control-scale 3  \
--ntp-server 10.1.166.4 -t 60
