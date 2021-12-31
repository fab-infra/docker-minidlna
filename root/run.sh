#!/bin/sh -e

# Set default environment
export MINIDLNA_MEDIA_DIRS="${MINIDLNA_MEDIA_DIRS:-/media}"

# Generate configuration
confd -onetime -backend env

# Start server
exec /usr/sbin/minidlnad -S
