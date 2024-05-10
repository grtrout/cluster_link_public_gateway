# Cluster Link Public Gateway Setup

## Overview
This guide outlines the steps to establish a bidirectional link between two Confluent Kafka clusters: one designated as 'public' (inbound) and the other as 'private' (outbound).

## Prerequisites
- Confluent Cloud CLI installed and configured.
- Access to two Confluent Cloud clusters with necessary permissions for link creation.

## Setup Instructions

### Step 1: Prepare Configuration Files
Modify the configuration files (`bidirectional-inbound.config` and `bidirectional-outbound.config`) in the `link-configs` directory.

### Step 2. Configure Environment Variables
Edit the `cluster_link_vars.sh` file with the appropriate environment and cluster details.

### Step 3. Create the Inbound Link on the Public Cluster
Run the `public_create_inbound_only_cl.sh` script to establish the inbound link.

### Step 4. Create the Outbound Link on the Private Cluster
Run the `private_create_outbound_only_cl.sh` script to set up the outbound link.

#### Notes: 
* Make sure to run the scripts in the order provided to properly configure the bidirectional link between the clusters.
* Ensure that the API keys and secrets provided have the necessary permissions to perform the operations.
