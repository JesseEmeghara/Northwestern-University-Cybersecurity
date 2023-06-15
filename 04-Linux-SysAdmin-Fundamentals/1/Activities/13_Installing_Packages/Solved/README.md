## Solution File: Installing Packages

To install the packages `emacs` and `cowsay` we need to use the command `apt` with the following syntax:
    
`sudo apt install <package>`

- `emacs` is a traditional file editor. 

- `cowsay` is a utility that takes in input, and displays a cow repeating it. 

### Instructions

1. Each time you install a package, `apt` will ask for permission to acquire the disk space needed to install the package.
  
- Use the man pages to find the flag that lets you automatically answer `yes` to any prompts that come up when installing a package:

    -  Run `man apt`

     - The flag is `sudo apt -y install <package name>`.

To install the remaining package, run the following commands:

- `sudo apt -y install cowsay`

2. Next we will want to use our new packages. Use the following commands to run your new utilities:

   - `emacs` will open your new text editor.  

   - `cowsay hello` will start a new line with a cow saying "hello."
  
**Bonus**

- Is there a way to install multiple packages with a single command?
    - Yes. Include each package name in the command, separated by a space: 
    
      `sudo apt -y install emacs cowsay`

- Run the following command:

   - `cowsay "Linux is Fun!"`
   
---
© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
