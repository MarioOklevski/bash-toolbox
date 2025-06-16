#!/bin/bash

TARGET_CITY="$1"
LOG_FILE="/path/to/log/file.log"
MMDB_FILE="/path/to/GeoIP/GeoLite2-City.mmdb"

if [ -z "$TARGET_CITY" ]; then
        # Extract IPs from log, resolve to cities, and count
        awk '{print $1}' "$LOG_FILE" | sort | uniq | while read ip; do
          city=$(mmdblookup --file "$MMDB_FILE" --ip "$ip" city names en 2>/dev/null | grep '<utf8_string>' | sed 's/.*"\(.*\)".*/\1/')
          [ -z "$city" ] && city="Unknown"
          echo "$city"
        done | sort | uniq -c | sort -nr
        exit 1
fi

awk '{print $1}' "$LOG_FILE" | sort | uniq | while read ip; do
  city=$(mmdblookup --file "$MMDB_FILE" --ip "$ip" city names en 2>/dev/null | grep '<utf8_string>' | sed 's/.*"\(.*\)".*/\1/')
  if [ "$city" == "$TARGET_CITY" ]; then
    echo "$ip"
  fi
done
