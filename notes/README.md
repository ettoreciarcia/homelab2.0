# Notes

## Wake on lan 

Follow this [guide](https://necromuralist.github.io/posts/enabling-wake-on-lan/)

## Error "401 Unauthorized" with apt install

Due to a package called ```deb https://enterprise.proxmox.com/debian/pve bullseye pve-enterprise```. It must be changed with ```deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription``` in ```/etc/apt/sources.list```.

Guide here: [Package Repositories Proxmox](https://pve.proxmox.com/wiki/Package_Repositories)