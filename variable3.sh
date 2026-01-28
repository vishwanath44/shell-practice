#!/bin/bash

TIMESTAMP=$(date)

echo "Script excuted at: $TIMESTAMP"

sleep 10

END_TIME=$(DATE +%S)
TOTAL_TIME=$((END_TIME-$START_TIME))

echo "Script executed in: $TOTAL_TIME"
