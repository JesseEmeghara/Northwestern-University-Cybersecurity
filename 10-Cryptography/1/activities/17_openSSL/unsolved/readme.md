## Activity File: OpenSSL 

In this activity, you will continue to play the role of a security analyst working for the Hill Valley Police department.

- Captain Strickland thanks you for selecting the best email vendor, but unfortunately it takes a few weeks for this vendor to install their systems.

- Captain Strickland still needs to communicate with you securely, so they sent you an urgent message, encrypted with OpenSSL.

- Your task is to decrypt the message and follow the instructions.

- In this activity you will also use the command called `wget` from the Linux weeks to grab the files that you need. 

### Instructions

1. Download the encrypted message onto your virtual machine using wget:

- Run: `wget https://gist.githubusercontent.com/jmmeacham/d71fa8a987ea7d12e7be46dadc7f5986/raw/1ff3d2b04827a11ccd9b78eb14f5552e0d39b89d/communication.txt.enc` to download the file. 

2. Download the Key and IV 

- Run: `wget https://gist.githubusercontent.com/jmmeacham/d894fcde2f5ed5613fe49fee433a6bbc/raw/809ea931822ac3ed30e93d864bf251f7c106166e/key-iv` to download the file. 

- Run: `cat key-iv` to read the file. 

  - **Note:** You'll need to copy parts of this file for the command that you will be using. 

3. Use OpenSSL with the key and IV provided to decrypt the message.
  
4. Use the following options when decrypting:

    - `-pbkdf2`
    - `-nosalt`
    - `-aes-256-cbc`
    - `-base64`

5. Follow the instructions provided in the decrypted message.
   
---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
