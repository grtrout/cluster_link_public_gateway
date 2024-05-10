#!/bin/bash

# Source the variables
source ./cluster_link_vars.sh

# Enable debugging to show command with expanded variables
set -x

# Use the private environment & cluster
confluent environment use $privateEnvId
confluent kafka cluster use $privateClusterId

# Create the outbound cluster link on the private cluster
confluent kafka link create bidirectional-link --remote-cluster $publicClusterId --environment $privateEnvId \
--cluster $privateClusterId --remote-api-key $publicApiKey --remote-api-secret $publicApiSecret \
--remote-bootstrap-server $publicBootstrap --config link-configs/bidirectional-outbound.config

# Disable debugging
set +x
