#!/bin/bash

# Function to check if a server is online
check_server_status() {
  local server_address=$1
  local ping_count=5

  # Perform multiple ping requests and capture the output
  local ping_output
  if ! ping_output=$(ping -c "$ping_count" "$server_address" 2>&1); then
    echo "Server is offline."
    return 1
  fi

  echo "Server is online."

  # Parse ping statistics to extract important information
  local packet_loss=$(awk -F', ' '/packet loss/{print $3}' <<< "$ping_output")
  local rtt_min=$(awk -F'/' '/rtt min/{print $4}' <<< "$ping_output")
  local rtt_avg=$(awk -F'/' '/rtt avg/{print $5}' <<< "$ping_output")
  local rtt_max=$(awk -F'/' '/rtt max/{print $6}' <<< "$ping_output")

  echo "Packet Loss: $packet_loss"
  echo "Round-Trip Time (RTT) Statistics:"
  echo "Minimum: $rtt_min ms"
  echo "Average: $rtt_avg ms"
  echo "Maximum: $rtt_max ms"
}

# Prompt for server address
read -p "Enter the server address or IP: " server_address

# Check server status
check_server_status "$server_address"

