#!/bin/bash

# Obtém a carga atual da CPU
loadavg=$(uptime | awk '{print $10}')

# Obtém o tempo de espera
uptime=$(uptime | awk '{print $3,$4}' | sed 's/,//')

# Obtém a utilização de memória
meminfo=$(cat /proc/meminfo)
memtotal=$(echo "$meminfo" | grep MemTotal | awk '{print $2}')
memfree=$(echo "$meminfo" | grep MemFree | awk '{print $2}')
memused=$((memtotal - memfree))
memused_percent=$((memused * 100 / memtotal))

# Obtém a utilização do disco e desempenho de leitura/escrita
disk=$(df -h | awk '$NF=="/"{printf "{\"total\": \"%s\", \"used\": \"%s\", \"free\": \"%s\", \"used_percent\": \"%s\"}\n", $2,$3,$4,$5}')
iostat=$(iostat -d -k | awk '$1=="sda"{printf "{\"read\": \"%s\", \"write\": \"%s\"}\n", $4,$5}')

# Verifica se existem atualizações pendentes
updates=$(apt-get -s dist-upgrade | awk '/^Inst/{print $2}')

# Verifica se existem atualizações de segurança pendentes
security_updates=$(apt-get -s dist-upgrade | awk '/^Inst.*security/{print $2}')

# Cria o arquivo JSON
echo "{ \"cpu\": { \"loadavg\": \"$loadavg\", \"uptime\": \"$uptime\" }, \"memory\": { \"total\": \"$memtotal\", \"used\": \"$memused\", \"used_percent\": \"$memused_percent\" }, \"disk\": $disk, \"iostat\": $iostat, \"updates\": \"$updates\", \"security_updates\": \"$security_updates\" }" > /var/www/html/system_info.json
