# Lab 8 Software Management

## Overview
This lab is intended to introduce software management in the Linux environment.

## Archival and Backup Tools
In this stage, you will create a tarfile of your lab5 backups directory tree, then gzip it. Once you verify the archive is good, you will remove the lab5 backups directory tree.

1. Create a tarfile with the tar command. The tarfile will contain the complete file tree in your lab5 backups directory. The tarfile should be named ~/lab5-originals.tgz.
    ```
    cd
    tar cfz lab5-originals.tgz backups
    ```

1. Verify your backups has the complete file tree from the lab5 backups directory.
    ```
    tar tvf lab5-originals.tgz
    ```
    The output should look like the following, but with your username, groupname, and timestamps:
    ```
    drwxr-xr-x  0 dennis staff       0 10 Jul 14:05 backups/
    drwxr-xr-x  0 dennis staff       0  5 Jun  2017 backups/catfiles/
    drwxr-xr-x  0 dennis staff       0  5 Jun  2017 backups/whoisit/
    -rw-r--r--  0 dennis staff  104797  5 Jun  2017 backups/whoisit/whoisit10.jpg
    -rw-r--r--  0 dennis staff   70151  5 Jun  2017 backups/whoisit/whoisit7.jpg
    -rw-r--r--  0 dennis staff   89132  5 Jun  2017 backups/whoisit/whoisit6.jpg
    -rw-r--r--  0 dennis staff   55622  5 Jun  2017 backups/whoisit/whoisit11.jpg
    -rw-r--r--  0 dennis staff   26530  5 Jun  2017 backups/whoisit/whoisit13.jpg
    -rw-r--r--  0 dennis staff   42989  5 Jun  2017 backups/whoisit/whoisit4.jpg
    -rw-r--r--  0 dennis staff   76079  5 Jun  2017 backups/whoisit/whoisit5.jpg
    -rw-r--r--  0 dennis staff   60799  5 Jun  2017 backups/whoisit/whoisit12.jpg
    -rw-r--r--  0 dennis staff   37455  5 Jun  2017 backups/whoisit/whoisit16.jpg
    -rw-r--r--  0 dennis staff   93507  5 Jun  2017 backups/whoisit/whoisit1.jpg
    -rw-r--r--  0 dennis staff   34491  5 Jun  2017 backups/whoisit/whoisit15.jpg
    -rw-r--r--  0 dennis staff   77462  5 Jun  2017 backups/whoisit/whoisit2.jpg
    -rw-r--r--  0 dennis staff   95557  5 Jun  2017 backups/whoisit/whoisit3.jpg
    -rw-r--r--  0 dennis staff   37086  5 Jun  2017 backups/whoisit/whoisit14.jpg
    -rw-r--r--  0 dennis staff   81144  5 Jun  2017 backups/whoisit/whoisit8.jpg
    -rw-r--r--  0 dennis staff   73038  5 Jun  2017 backups/whoisit/whoisit9.jpg
    -rw-r--r--  0 dennis staff      24  5 Jun  2017 backups/catfiles/toys
    -rw-r--r--  0 dennis staff   54906 21 Jun  2016 backups/catfiles/rocky
    -rw-r--r--  0 dennis staff  105880 19 Mar  2014 backups/catfiles/dozer
    -rw-r--r--  0 dennis staff  437762 25 Jul  2014 backups/catfiles/feral
    -rw-r--r--  0 dennis staff      23  5 Jun  2017 backups/catfiles/food
    -rw-r--r--  0 dennis staff 2459513  4 Oct  2004 backups/catfiles/tails
    -rw-r--r--  0 dennis staff  263255  5 Jun  2017 backups/catfiles/fish
    ```
      **If your verification fails, do NOT proceed. Go back and fix it before proceeding.**
  
1. Remove your lab5 backups directory.
    ```
    rm -r ~/backups
    ```

## Package Management
1. Use the **dpkg** to determine if the apg package is installed on your system. If not, use **apt** to install it. Use the **dpkg** command to see what files were installed as part of the apg package.
    ```
    dpkg -s apg
    dpkg -L apg
    ```
      Try using the apg command to generate 5 passwords, 12 characters long each. Capture a screenshot of the terminal window showing your prompt, command, and as much of the output as fits in the window.

1. Identify the full pathname of the file that provides the ssh command for your system. Use the dpkg command to identify what package that ssh command came from.
    ```
    which ssh
    dpkg -S /usr/bin/ssh
    ```

1. Using an apt command, list the youtube-related packages available for your Linux distro.
    ```
    apt search youtube
    ```

1. The rpm and yum tools are available for Ubuntu. Install the rpm and yum tools.

## Service Management
1. Try using both the service command and the systemctl command to view the current status of your sshd service.
    ```
    service sshd status
    systemctl status sshd
    ```

## System Logs
1. List the logfiles in the /var/log directory.
    ```
    cd /var/log
    ls
    ```

1. Which logfiles have most recently been modified (had entries added or been rotated)?
    ```
    ls -lt | head
    ```

1. What are the last 5 entries in the ```syslog``` file?
    ```
    tail -5 syslog
    ```

## Submission of Results

Capture screenshots of the terminal window showing your prompt, commands, and as much of the output for each command as fits in the window with your command still showing. Submit a single PDF file to blackboard containing your screenshots in the order they were performed, along wityh your responses to the questios asked in the lab.
