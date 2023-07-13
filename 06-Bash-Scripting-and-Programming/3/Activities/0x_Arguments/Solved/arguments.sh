#!/bin/bash
# Quick setup script for new server.
#
# Check for an output file
if [ ! $1 ]
then
    echo "Please specify an output file."
    exit
fi

# Make sure the script is run as root.
if [ ! $UID = 0 ]
then
  echo "Please run this script as root."
  exit
fi

# Log file header
echo "Log file for general server setup script." >> $1
echo "############################" >> $1
echo "Log generated on: $(date)" >> $1
echo "############################" >> $1
echo "" >> $1

# List of packages needed on the System
packages=(
  'nano'
  'wget'
  'net-tools'
  'python'
  'tripwire'
  'tree'
  'curl'
)

# Check for installed packages. If they are not installed, install them.
for package in ${packages[@]};
do
  if [ ! $(which $package) ];
  then
    apt install -y $package
  fi
done

# Print it out and Log it
echo "$(date) Installed needed pacakges: ${packages[@]}" | tee -a $1

# Create a sysadmin user with no password (password to be created upon login)
useradd sysadmin
chage -d 0 sysadmin

# Add sysadmin user to the `sudo` group
usermod -aG sudo sysadmin

# Print it out and Log it
echo "$(date) Created sys_admin user. Password to be created upon login" | tee -a $1

# Remove roots login shell and lock the root account.
usermod -s /sbin/nologin root
usermod -L root

# Print it out and Log it
echo "$(date) Disabled root shell. Root user cannot login." | tee -a $1

# Change permissions on sensitive files
chmod 600 /etc/shadow
chmod 600 /etc/gshadow
chmod 644 /etc/group
chmod 644 /etc/passwd

# Print it out and Log it
echo "$(date) Changed permissions on sensitive /etc files." | tee -a $1

scripts=/home/sysadmin/scripts
# Setup scripts folder
if [ ! -d $scripts ];
then
  mkdir $scripts
  chown sysadmin:sysadmin $scripts
fi

bashrc=/home/sysadmin/.bashrc
# Add scripts to .bashrc
echo "" >> $bashrc
echo "PATH=$PATH:$scripts" >> $bashrc
echo "" >> $bashrc

# Print it out and Log it
echo "$(date) Added ~/scripts directory to sysadmin's PATH." | tee -a $1

# Add custom aliases to $bashrc
cat >> /home/sysadmin/.bashrc << END
Custom Aliases
alias reload='source ~/.bashrc && echo Bash config reloaded'
alias lsa='ls -a'
alias docs='cd ~/Documents'
alias dwn='cd ~/Downloads'
alias etc='cd /etc'
alias rc='nano ~/.bashrc'
END

# Print it out and Log it
echo "$(date) Added custom alias collection to sysadmin's bashrc." | tee -a $1

#Print out and log Exit
echo "$(date) Script Finished. Exiting." | tee -a $1

exit