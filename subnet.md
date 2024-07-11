# 1. Lab: [Subnet 1: 200.200.10.48/29](https://www.davidc.net/sites/default/subnets/subnets.html)

```
Total Addresses: 2^(32-29) = 8
Usable Hosts: 8 - 2 =6
Network Address: 200.200.10.48
Usable Hosts Ranges: 200.200.10.49 - 200.200.10.54
Default Gateway: 200.200.10.54
Broadcast Address: 200.200.10.55
```

# 2. Lab: [Subnet 2: 200.200.10.56/29](https://www.davidc.net/sites/default/subnets/subnets.html)

```
Total Addresses: 2^(32-29) = 8
Usable Hosts: 8 - 2 =6
Network Address: 200.200.10.56
Usable Hosts Ranges: 200.200.10.57 - 200.200.10.62
Default Gateway: 200.200.10.62
Broadcast Address: 200.200.10.63
```

# 3. Lab: [Subnet 3: 200.200.10.0/28](https://www.davidc.net/sites/default/subnets/subnets.html)

```
Total Addresses: 2^(32-28) = [32-28 = 4]  [2^4 = 2*2*2*2] = 16
Usable Hosts: 16 - 2 = 14
Network Address: 200.200.10.0
Usable Hosts Ranges: 200.200.10.01 - 200.200.10.14
Default Gateway: 200.200.10.14
Broadcast Address: 200.200.10.15
```

# 4. Lab: [Subnet 4: 200.200.10.16/28](https://www.davidc.net/sites/default/subnets/subnets.html)

```
Total Addresses: 2^(32-28) = 4
Usable Hosts: 16 - 2 = 14
Network Address: 200.200.10.16
Usable Hosts Ranges: 200.200.10.17 - 200.200.10.30
Default Gateway: 200.200.10.30
Broadcast Address: 200.200.10.31
```

# 5. Lab: [Subnet 5: 192.168.117.08](https://www.davidc.net/sites/default/subnets/subnets.html)

_what is the max num of valid hosts one will have from the network address 192.168.117.08 255.255.255.`192`_

```
.192 = "11000000" = [`1`,`1`,0,0,0,0,0,0]
[`128`,`64`,32,16,8,4,2,0]
192 = `128` & `64` = "`1`1`000000"

192 = 64 - 2 = 62 (DG)?
```

# 5. Lab: [Subnet 5: 92.168.1.25/26](https://www.davidc.net/sites/default/subnets/subnets.html)

**Exercise: Identify Subnet Address Range Your computer has an IP address of 92.168.1.25/26**
_What is the range of IP addresses included in your subnet?
• What is the broadcast address?
• What is the network address?
• How many usable addresses are in this network?_

```
Total Addresses: 2^(32-26) = 6 [2^6] = 64
Usable Hosts: 64 - 2 = 62
Network Address: 92.168.1.25
Usable Hosts Ranges: 200.200.10.26 - 200.200.10.87
Default Gateway: 200.200.10.87
Broadcast Address: 200.200.10.88
```

# 6. Lab: [Subnet 6: 192.168.1.0/24](https://www.davidc.net/sites/default/subnets/subnets.html)

**Exercise 1: Subnet a Network. Break up 192.168.1.0/24 into 4 smaller subnets, with an equal number of addresses in each subnet.**

_To break up the 192.168.1.0/24 network into 4 smaller subnets with an equal number of addresses, we need to create subnets that are each a /26 network. A /24 network has 256 addresses (2^8), and dividing it into 4 equal parts gives us subnets with 64 addresses each (2^6)._

Here are the steps to achieve this:

Determine the new subnet mask: The original subnet mask is /24, which corresponds to 255.255.255.0. To divide it into 4 equal parts, we add 2 bits to the subnet mask, resulting in a /26 subnet mask, which corresponds to 255.255.255.192.

Calculate the number of addresses in each subnet: A /26 subnet has 64 addresses (2^6 = 64).

1. _The first subnet: 192.168.1.0/26_

```
Network address: 192.168.1.0
Usable Hosts Ranges: 192.168.1.1 - 192.168.1.62
Default Gateway: 192.168.1.62
Broadcast address: 192.168.1.63
```

2. _The second subnet: 192.168.1.64/26_

```
Network address: 192.168.1.64
Usable Hosts Ranges: 192.168.1.65 - 192.168.1.126
Default Gateway: 192.168.1.126
Broadcast address: 192.168.1.127
```

3. _The third subnet: 192.168.1.128/26_

```
Network address: 192.168.1.128
Usable Hosts Ranges: 192.168.1.129 - 192.168.1.190
Default Gateway: 192.168.1.190
Broadcast address: 192.168.1.191
```

4. _The fourth subnet: 192.168.1.192/26_

```
Network address: 192.168.1.192
Usable Hosts Ranges: 192.168.1.193 - 192.168.1.254
Default Gateway: 192.168.1.254
Broadcast address: 192.168.1.255
```

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

3. _For printers 6 hosts = \29 => 8 - 2 = 6 ip /Net ip: 192.168.1.96\29_

```
Subnet Masc: 255.255.255.248
255.255.255.248 => (24) =>(11111111.11111111.11111111.`11111`000) => (+ 5) => `11111` => 128 + 64 + 32 + 16 + 8= 248
```

```
Network address: 192.168.1.96
Usable Hosts Ranges: 192.168.1.97 - 192.168.1.102
Default Gateway: 192.168.1.102
Broadcast address: 192.168.1.103
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
