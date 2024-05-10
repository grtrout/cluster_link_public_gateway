#!/bin/bash

# Source the variables
source ./cluster_link_vars.sh

# Enable debugging to show command with expanded variables
set -x

# Use the public environment & cluster
confluent environment use $publicEnvId
confluent kafka cluster use $publicClusterId

# Create the inbound cluster link on the public cluster
confluent kafka link create bidirectional-link --remote-cluster $privateClusterId \
--environment $publicEnvId --cluster $publicClusterId --remote-bootstrap-server $privateBootstrap \
--config link-configs/bidirectional-inbound.config

# Disable debugging
set +x
