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

(11`000000`) => `0` => 32 + `0` => 16 + `0` => 8 + `0` => 4 + `0` => 2 + `0` => 1 = 63
```

Bum 63!

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
