#!/bin/sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
chmod +x "$SCRIPT_DIR/rxe-agent/RPXEngine"
"$SCRIPT_DIR/rxe-agent/RPXEngine" config --host "gcb.csh.org.tw" \
  --https true \
 --port 443 \
  \
  \
  --registration-code "YYZNB-UMYBE-HA423-QSG3Y-QLGAW"
if [ $? -ne 0 ]; then
    echo "Config failed, aborting installation."
    exit 1
fi

if [ "$1" = "-ignore" ]; then
    exit 0
else
    "$SCRIPT_DIR/rxe-agent/RPXEngine" -install
fi