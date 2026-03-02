#!/bin/bash
set -euxo pipefail
for i in {1..20}; do
  if curl -fsS http://127.0.0.1/healthz >/dev/null; then
    exit 0
  fi
  sleep 2
done
echo "Health check failed"
exit 1
