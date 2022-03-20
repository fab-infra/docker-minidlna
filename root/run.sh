#!/bin/sh -e

# Generate configuration
confd -onetime -backend env

# Start server
exec /usr/sbin/minidlnad -S
