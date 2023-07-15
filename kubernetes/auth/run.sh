#!/bin/bash
java -Xms200m -Xmx200m -jar auth-exec.jar \
       --server.port=50002 \
       --server.context-path=/auth \
       --spring.profiles.active="adl-dev-eks" \
       --spring.cloud.vault.generic.enabled=true \
       --spring.cloud.vault.app-role.role-id="3fe86704-33b4-0852-d793-4ce976efda22" \
       --spring.cloud.vault.app-role.secret-id="1ee9182f-9df2-98c8-c101-a5fb6397d159" > /dev/stdout
