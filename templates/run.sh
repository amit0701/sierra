#!/bin/bash
openstack overcloud deploy --templates \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /home/stack/templates/flexpod.yaml \
-e /home/stack/templates/net-vlans.yaml \
--control-flavor control --compute-flavor compute  \
--compute-scale 1 --control-scale 3  \
--neutron-network-type vlan \
--neutron-tunnel-type vlan \
--neutron-bridge-mappings datacentre:br-ex,physnet-tenant:br-tenant\
--neutron-network-vlan-ranges physnet-tenant:650:750 \
--ntp-server 10.1.166.4 -t 60
