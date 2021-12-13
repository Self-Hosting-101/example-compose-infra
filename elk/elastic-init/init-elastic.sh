#!/bin/sh

sleep 30
curl -XPUT -H 'Content-Type: application/json' -u "${ELASTIC_USERNAME}:${ELASTIC_PASSWORD}" http://elasticsearch:9200/_ingest/pipeline/geoip-info -d@/geoip-info.json
