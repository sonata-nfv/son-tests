#!/bin/bash
set -x
set -e
# -- insert request
curl -H "Content-Type: application/json" -X POST http://sp.int3.sonata-nfv.eu:32001/requests?service_uuid=8b47d222-560a-4cad-a54a-793b1ee8849e
