## Student Activity File - Bash Script Arguments

Welcome!

In this activity, you will write your last bash script for this course, taking in and processing arguments for your script.

Many times your scripts will want to take an action on some file or text that you provide it when you run the script.

In this case, we want our system setup script to be able to write to a file that you specify when you run the script.

We will also check to see if that file was provided when the script was run, and if not, exit the script.

Instructions

- Take your finished script from the code along in the last class.
    
    **Solution**: Should be the 'Quick Setup Script'

- Write an _if_ statement at the beginning of the script that checks the variable for the first argument. If the variable is empty, exit the script.

    **Solution**
    ```bash
    # Check for an output file
    if [ ! $1 ]
    then
        echo "Please specify an output file."
        exit
    fi
    ```

- Replace all occurrences of your `$log_file` variable with the variable that represents the first argument given to the script.

    **Solution**: There are 2 ways to do this. 
    ```bash
    # assign the $1 variable to your $log_file variable
    logfile=$1

    OR

    # Use the $1 variable directly
    echo "$(date) Changed permissions on sensitive /etc files." | tee -a $1
    ```

- Check your script for any other opportunities to use variables to clean things up.
    
    **Solution**: We can use a variable anytime we have to write the same long string more than once:
    
    THIS:
    ```bash
    # Setup scripts folder
    if [ ! -d /home/sysadmin/scripts ];
    then
    mkdir /home/sysadmin/scripts
    chown sysadmin:sysadmin /home/sysadmin/scripts
    fi
    ```

    BECOMES THIS:
    ```bash
    scripts=/home/sysadmin/scripts
    
    # Setup scripts folder
    if [ ! -d $scripts ];
    then
    mkdir $scripts
    chown sysadmin:sysadmin $scripts
    fi
    ```
- Replace your custom aliases section with a `HERE` doc

    **Solution**:
    
    THIS:
    ```bash
    # Add custom aliases to /home/sysadmin/.bashrc
    echo "#Custom Aliases" >> /home/sysadmin/.bashrc
    echo "alias reload='source ~/.bashrc && echo Bash config reloaded'" >> /home/sysadmin/.bashrc
    echo "alias lsa='ls -a'" >> /home/sysadmin/.bashrc
    echo "alias docs='cd ~/Documents'" >> /home/sysadmin/.bashrc
    echo "alias dwn='cd ~/Downloads'" >> /home/sysadmin/.bashrc
    echo "alias etc='cd /etc'" >> /home/sysadmin/.bashrc
    echo "alias rc='nano ~/.bashrc'" >> /home/sysadmin/.bashrc
    ```

    BECOMES THIS:
    ```bash
    cat >> /home/sysadmin/.bashrc << END
    Custom Aliases
    alias reload='source ~/.bashrc && echo Bash config reloaded'
    alias lsa='ls -a'
    alias docs='cd ~/Documents'
    alias dwn='cd ~/Downloads'
    alias etc='cd /etc'
    alias rc='nano ~/.bashrc'
    END
    ```

- Run your script and provide an output file as the first argument.

    **Solution**: `sudo ./setup_script.sh log_file.txt`