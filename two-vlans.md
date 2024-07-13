# 1. Lab: [Subnet 1: Creating Two VLANs Network](https://www.davidc.net/sites/default/subnets/subnets.html)

1. **VLAN 10: 2 computers with network 192.168.1.0/26**

```
Total Addresses: 2^(32-26) = 6 [2^6] = 64
Usable Hosts: 64 - 2 = 62
Network Address: 192.168.1.0
Usable Hosts Ranges: 192.168.1.1 - 192.168.1.62
Default Gateway: 192.168.1.61
Broadcast Address: 192.168.1.63
```

```js
first computer ip: 192.168.1.1
second computer ip: 192.168.1.2
```

1. **VLAN 20: 3 computers with network 192.168.1.64/27**

```
Total Addresses: 2^(32-27) = 5 [2^5] = 32
Usable Hosts: 32 - 2 = 30
Network Address: 192.168.1.64
Usable Hosts Ranges: 192.168.1.65 - 192.168.1.94
Default Gateway: 192.168.1.93
Broadcast Address: 192.168.1.95
```

```js
first computer ip: 192.168.1.66
second computer ip: 192.168.1.67
```
