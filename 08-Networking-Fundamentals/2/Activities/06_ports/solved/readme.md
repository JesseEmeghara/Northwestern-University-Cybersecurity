## Solution Guide: Ports

The goal of this exercise was to introduce you to ports and demonstrate that each protocol is assigned a specific port number.

This activity required the following steps:
   
   - Open the log file to view the various log records.
   
   - Determine the source and destination port for each log record.
   
   - Determine the protocol for the associated destination port.
   
   - Determine what kind of activity may be occurring based on the protocol.

---


When you open the log file, you see the source and destination port in each record. It resembles the following example:
 
 `Src Port: 50152, Dst Port: 80`
 
**Log Record 1**
 
  - Source port: `50152`
  - Destination port: `80`
  - Destination protocol: `HTTP`
  - Protocol summary: Sally Stealer is likely accessing an unencrypted website.


**Log Record 2**		
  
  - Source port: `53367`
  - Destination port: `443`
  - Destination protocol: `HTTPS`
  - Protocol summary: Sally Stealer is likely accessing a website with encrypted traffic.

**Log Record 3**

  - Source port: `64836`
  - Destination port: `21`
  - Destination protocol: `FTP`
  - Protocol summary: Sally Stealer is likely using FTP to transfer files.
---
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.


