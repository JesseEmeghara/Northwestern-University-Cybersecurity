## Activity File: Installing Packages

Now that we have stopped a malicious service from running and completed a basic audit, we're now going to cover some of the miscellaneous utilities that we can install onto our VMs. Specifically we'll install the following services:

- `emacs` is a traditional file editor. 

- `cowsay` is a utility that takes in input and displays a cow repeating it. 

### Instructions

1. To install the packages `emacs` and `cowsay` you will need to use the command that you have learned from the Installing Packages lecture.

   Each time you install a package, `apt` will ask for permission to use the disk space needed to install the package.

    - Use the man pages to find a flag that lets you automatically answer `yes` to any prompts that come up when installing a package.

    - Install the remaining packages by using this command. 

2. Next we will want to use our new packages. Use the following commands to run your new utilities:

   - `emacs` will open your new text editor.  

   - `cowsay hello` will start a new line with a cow saying "hello."

#### Bonus

3. Find the command that will let you install multiple packages with a single command.

4. Run the following command:
   - `cowsay "Linux is Fun!"`

---
© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
