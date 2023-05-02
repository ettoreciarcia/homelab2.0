# Notes

## Wake on lan 

Follow this [guide](https://necromuralist.github.io/posts/enabling-wake-on-lan/)

```wakeonlan -i [HOST_IP] [MAC_ADDRESS]``` 
or 
```wakeonlan [MAC_ADDRESS]``` (this one will send this packet in broadcast)

## Error "401 Unauthorized" with apt install

Due to a package called ```deb https://enterprise.proxmox.com/debian/pve bullseye pve-enterprise```. It must be changed with ```deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription``` in ```/etc/apt/sources.list```.

Guide here: [Package Repositories Proxmox](https://pve.proxmox.com/wiki/Package_Repositories)

## VPN ACCESS

I'm using [giggio/openvpn-arm](https://hub.docker.com/r/giggio/openvpn-arm/) docker image

```sudo iptables -A INPUT -p udp --dport 1194 -j ACCEPT```

We need to add this line to .ovpn file 
```cipher BF-CBC```

And remove 

```redirect-gateway def1```

"dhcp-option DNS" specifies the IP address of the DNS server that the client should use. This option is typically used to set the DNS server to the one provided by the VPN provider. By doing this, all DNS requests made by the client will go through the VPN tunnel and be encrypted for additional security and privacy. 

With DHCP options we want set local dns server

We receive from client:

"push-reply" is a directive that tells the OpenVPN server to push certain options to the client when it connects. In this case, the server is pushing two options: "block-outside-dns" and "dhcp-option DNS".

"block-outside-dns" is a security feature that prevents DNS leaks by blocking any DNS requests that do not go through the VPN tunnel. This ensures that all DNS queries are handled by the DNS servers specified by the VPN provider, and not by potentially insecure DNS servers outside of the VPN.


Note that the client configuration must be set to allow changes to DNS settings pushed by the server. To do this, you can add the following line to your client configuration file:

```
# Allow DNS settings to be pushed by the server
pull-filter ignore "dhcp-option DNS"
```

___

Should i create an app to wake on lan my device (?)
