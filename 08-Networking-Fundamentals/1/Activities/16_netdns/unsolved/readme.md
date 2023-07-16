## Activity File: DNS Hijacking

In this activity, you will continue to play the role of a security analyst at Acme Corp.

- In the previous activity, you determined that the hacker is trying to access Acme Corp's trade secrets.

- Acme Corp is concerned the hacker may try to access a website called acmetradesecrets.com. Acme must prevent the hacker from accessing this website.

- Your task is to create and test out a DNS spoof record that will redirect any hacker trying to visit acmetradesecrets.org to another website.

- This will first be tested on your machine, but later it will be added to the hacker's computer.

### Instructions

Log into your Linux server.

1. Create a DNS spoof record for acmetradesecrets.org to be redirected to the IP address of `45.33.32.156` (scanme.nmap.org). 

2. Open a browser in your Linux server and validate that when you access acmetradesecrets.com, it redirects correctly.

#### Bonus

- Research how to apply the same DNS spoof record on a Windows machine or VM.

- If you don't have access to a Windows machine, simply document the steps to create a DNS spoof record on a Windows system. If you do have access to a Windows machine, apply the spoof record on it.   

---
© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
