## Solution Guide: Footprint with ping

In this activity, you had to use `ping` to determine which of CompuCom's host IP addresses are accepting connections.

This activity required the following steps:

   - Sending a `ping` request to several IP addresses.
   
   - Analyzing the `ping` responses to determine which hosts are available.

---

Run a `ping` request against each of the following IP addresses:

- `192.0.43.10`
- `107.191.96.26`
- `41.19.96.234`
- `107.191.101.180`
- `23.226.229.4`
- `154.226.18.4`
- `176.56.238.3`
- `176.56.238.99	`


**Note:** Results may differ since this is a live network ping.

- The command to run the pings look like:

    `$ ping 192.0.43.10`

- All the IPs except the three listed below return a successful result:

``` bash
Pinging 192.0.43.10 with 32 bytes of data:
Reply from 192.0.43.10: bytes=32 time=75ms TTL=241
Reply from 192.0.43.10: bytes=32 time=29ms TTL=241
Reply from 192.0.43.10: bytes=32 time=44ms TTL=241
Reply from 192.0.43.10: bytes=32 time=30ms TTL=241

Ping statistics for 192.0.43.10:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 29ms, Maximum = 75ms, Average = 44ms`

```
    
- The three IPs that fail are:

    - `41.19.96.234` 
    - `154.226.18.4 `
    - `176.56.238.99`

-  The result failure looks like:

```bash 
Pinging 41.19.96.234 with 32 bytes of data:
Request timed out.
Request timed out.
Request timed out.
Request timed out.

Ping statistics for 41.19.96.234:
    Packets: Sent = 4, Received = 0, Lost = 4 (100% loss)`    
```

 

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
