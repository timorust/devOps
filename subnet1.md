# 7. Lab: [Subnet 7: Calculate the Number of Hosts](https://www.davidc.net/sites/default/subnets/subnets.html)

**Exercise: Identify Subnet Address Range Your computer has an IP address of 92.168.1.25/26**

1. _How many hosts are in a /29 network?_

```
Total Addresses: 2^(32-29) = 3 [2^3] = 8
Usable Hosts: 8 - 2 = 6
So, there are 6 hosts in a /29 network.
```

2. _How many hosts are in a /10 network?_

```
Total Addresses: 2^(32-10) = 22 [2^22] = 4,194,304
Usable Hosts: 4,194,304 − 2 = 4,194,302
So, there are 4,194,302 hosts in a /10 network.
```

# 8. Lab: [Subnet 8: Divide 172.16.0.0/16 into 4 smaller subnets ](https://www.davidc.net/sites/default/subnets/subnets.html)

**Design Subnets of Different Sizes • Divide 172.16.0.0/16 into 4 smaller subnets. Two subnets must support 400 devices each. Use the smallest possible subnets to accomplish these goals.**

_To find the subnet mask that supports 400 devices, we use the formula for finding the number of possible hosts in a network:_

```
2^9 = 512 (sufficient)
So, the required subnet mask is:
32 − 9 = 23
255.255.254.0 = /23
```

_Subnets of /23_

1. **First subnet: 172.16.0.0/23**

32-23 = 9 2^9 = 512 -2 = 510

```
Network address: 172.16.0.0
Usable Hosts Ranges: 172.16.0.1 - 172.16.1.254
Default Gateway: 172.16.1.254
Broadcast address: 172.16.1.255
```

2. **Second subnet: 172.16.2.0/23**

32-23 = 9 2^9 = 512 -2 = 510

```
Network address: 172.16.2.0
Usable Hosts Ranges: 172.16.2.1 - 172.16.3.254
Default Gateway: 172.16.3.254
Broadcast address: 172.16.3.255
```

_Two Additional Subnets/24_

1. **First subnet: 172.16.4.0/24**

32-24 = 8 2^8 = 256 - 2 = 254

```
Network address: 172.16.4.0
Usable Hosts Ranges: 172.16.4.1 - 172.16.4.254
Default Gateway: 172.16.4.254
Broadcast address: 172.16.4.255
```

2. **Second subnet: 172.16.5.0/24**

32-24 = 8 2^8 = 256 - 2 = 254

```
Network address: 172.16.5.0
Usable Hosts Ranges: 172.16.5.1 - 172.16.5.254
Default Gateway: 172.16.5.254
Broadcast address: 172.16.5.255
```

_Summary: The 172.16.0.0/16 network is divided into 4 subnets:_

```
172.16.0.0/23 - supports 400 devices
172.16.2.0/23 - supports 400 devices
172.16.4.0/24
172.16.5.0/24
```

# 9. Lab: [Subnet 9:Build hosts for 3 departments 192.168.1.0\24](https://www.davidc.net/sites/default/subnets/subnets.html)

**Build hosts for 3 departments: engineering, marketing, printers**

1. _For engineering 46 hosts = \26 = 64 -2 = 62 ip /Net ip: 192.168.1.0\26_

```
Subnet Masc: 255.255.255.192
255.255.255.192 => (24) =>(11111111.11111111.11111111.`11`000000) => (+ 2) => `11` => 128 + 64 = 192
```

```
Network address: 192.168.1.0
Usable Hosts Ranges: 192.168.1.0 - 192.168.1.62
Default Gateway: 192.168.1.62
Broadcast address: 192.168.1.63
```

2. _For marketing 15 hosts = \27 => 32 - 2 = 30 ip /Net ip: 192.168.1.64\27_

```
Subnet Masc: 255.255.255.224
255.255.255.224 => (24) =>(11111111.11111111.11111111.`111`00000) => (+ 3) => `111` => 128 + 64 + 32 = 224
```

```
Network address: 192.168.1.64
Usable Hosts Ranges: 192.168.1.65 - 192.168.1.94
Default Gateway: 192.168.1.94
Broadcast address: 192.168.1.95
```

3. _For printers 6 hosts = \28 => 16 - 2 = 14 ip /Net ip: 192.168.1.96\28_

```
Subnet Masc: 255.255.255.240
255.255.255.240 => (24) =>(11111111.11111111.11111111.`1111`0000) => (+ 4) => `1111` => 128 + 64 + 32 + 16 = 240
```

```
Network address: 192.168.1.96
Usable Hosts Ranges: 192.168.1.97 - 192.168.1.110
Default Gateway: 192.168.1.110
Broadcast address: 192.168.1.111
```

```js
| ------ | ---- | ----- | -------- |
| subnet | ip   | index | number   |
| ------ | ---- | ----- | -------- |
| 32     | 1    | 0     | 1        |
| 31     | 2    | 1     | 2        |
| ------ | ---  | ----- | -------- |
| 30     | 4    | 2     | 3        |
| 29     | 8    | 3     | 4        |
| 28     | 16   | 4     | 5        |
| 27     | 32   | 5     | 6        |
| 26     | 64   | 6     | 7        |
| 25     | 128  | 7     | 8        |
| ------ | ---  | ----- | -------- |
| 24     | 256  | 8     | 9        |
| 23     | 512  | 9     | 10       |
| ------ | ---  | ----- | -------- |
| 22     | 1024 | 10    | 11       |
| ------ | ---- | ----- | -------- |
```
