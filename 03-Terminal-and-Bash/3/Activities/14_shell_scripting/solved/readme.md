## Solution Guide: My First Shell Script

- The first step is to navigate into the `first_shell_script` directory. To do this, run the following commands:
 
  - `cd /03-student/day3/`

  - `cd first_shell_script`
       
- Within this directory is a log file called `LogA.txt`.  

- We will use `nano` to create a shell script called `Log_analysis.sh`:

  - `nano Log_analysis.sh`
        
- We will place the two commands used in the previous activities inside this file:

    `sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt`

    `awk '{print $4, $6}' access_denied.txt > filtered_logs.txt`

    - Make sure that the first command references `LogA.txt`. 

- Save the Nano file using Ctrl+X, then press Y and keep the file name.

- Run the shell command with the following:

  - `chmod +x Log_analysis.sh`

  - `./Log_analysis.sh`

  - **Running `sh file.sh` also works!** 

- Confirm the results are correct by checking the new file called `filtered_logs.txt`.

  - Within this file should only be the date and username.

---

© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
