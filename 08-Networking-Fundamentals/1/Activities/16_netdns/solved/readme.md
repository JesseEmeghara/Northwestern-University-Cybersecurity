
## Solution Guide: DNS Hijacking 

To complete this activity, you had to create a DNS spoof record that will redirect any hacker trying to visit acmetradesecrets.com to a different website.

--- 

Access the DNS hosts file on a Linux server:

- On the Linux server, the hosts file is located at `/etc/hosts`.

- To get there, run `cd /etc` from the terminal.

- Run `ls` to confirm there is a file called `hosts`.

Modify the DNS hosts file to redirect the access of a website:

- Edit the file by entering `sudo nano hosts`.

- Add the following record to the bottom of the file:

    `45.33.32.156   www.acmetradesecrets.org`

- Exit and save your changes by entering `Ctrl+X` and select `Y` when prompted to save the file.

Validate the DNS spoofing works by going to acmetradesecrets.com and verifying the site is redirected:


- Open a browser in your Linux host and enter www.acmetradesecrets.org.

- This should automatically redirect to the other website, which should be scanme.nmap.org.

### Bonus

If you have a Windows machine or VM, research how to apply the same DNS spoof record on your Windows machine and do so. If you don't have access to a Windows machine, simply document the steps to create a DNS spoof record on a Windows system.
 
On a Windows machine:

- Edit the file using the same steps as in Linux, but find the hosts file at
`C:\Windows\System32\drivers\etc`. 

- Note: You must be an administrator to make this change. 

- To become an administrator, right-click on the Notepad application and select `Run as administrator`.

- Copy and paste the whole hosts file, with your change, into the blank file.

- Save the file as `Hosts` in `C:\Windows\System32\drivers\etc`.

 - Click OK to replace the current file.

Validate that the changes have taken place by going to www.acmetradesecrets.org in your browser in Windows.

---
© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
