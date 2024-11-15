# Create a resource group
az group create --name LadderC --location koreacentral

# Create a container instance
az container create --resource-group LadderC --name tony-ladder-container --image mritd/shadowsocks --cpu 1 --memory 1.5 --ports 443 --protocol TCP --command-line "/bin/sh -c 'ss-server -s 0.0.0.0 -p 443 -m chacha20-ietf-poly1305 -k 2wsx#EDC'" --ip-address Public --dns-name-label myci
