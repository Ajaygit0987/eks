#!/bin/bash
java -Xms200m -Xmx200m -jar gateway-exec.jar \
       --server.port=50000 \
       --spring.profiles.active="adl-dev-eks" \
       --spring.cloud.vault.generic.enabled=true \

