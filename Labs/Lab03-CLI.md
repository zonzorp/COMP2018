# Lab 3 The command line interface

## Overview
In this lab, you will be introduced to using the terminal utilities and command line basic syntax. All Linux commands in this lab are to be run using your normal user account only, without the use of sudo or su.

## Local Access
Start a terminal window on the Linux desktop. In that terminal window, use the ```tty``` command to identify which terminal device you are currently using. Without quitting the terminal window, start another terminal window and use the ```tty``` command in that window to see what terminal device it uses. You can find the IP address of your Linux VM for the next step using the **hostname** command:

```
hostname -I
```

## Remote Access
On your host laptop, start up a terminal program.

* If you are on a Mac, you can just start the **Utilities->Terminal** application and enter the following command:
  ```
  ssh <ip address of Linux VM>
  ```

* If you are using Windows, you can download and run the **putty** program from your favourite internet software download site, or you can install ssh for Windows from Microsoft. The link to download ssh from Microsoft is [https://github.com/PowerShell/Win32-OpenSSH/releases](https://github.com/PowerShell/Win32-OpenSSH/releases). Once you download it and unzip it, copy the ssh.exe, sftp.exe, scp.exe and libcrypto.dll files to a folder on your search path:
  ```
  copy ssh.exe c:\windows\system32
  copy sftp.exe c:\windows\system32
  copy scp.exe c:\windows\system32
  copy libcrypto.dll c:\windows\system32
  ```
  Start powershell and enter the following command to use ssh:
  ```
  ssh <ip adress of Linux VM>
  ```

Whichever method you use, you will be asked to enter your Linux password. Enter it, and you will get a shell prompt. At that prompt, enter the ```tty``` command to identify your terminal device. Enter the ```who``` command to see the logged in users.

## Shell identification
When you log on to a Linux computer with a terminal, you will be given access to the shell program fi your account has that privilege (the default account has that privilege). It is helpful to know which shell you are running if you want to use any of the shell's non-trivial capabilities. A simple way to identify your shell is to ask the system to show you which processes your current login has running. The command to see process information is
```
ps
```

When you run that command it will show you the processes running that are attached to your terminal. You should see 2 output lines, one for the ps command itself, and the other will be the shell you are running (the default for most systems is bash).

## Filename globbing
It is very common to work with multiple files in shell commands. We can save ourselves a great deal of typing by using filename globbing (_*, ?, and []_). Run the following commands to create some files to play with, exactly as they are shown.
```
cd ~/Documents
mkdir lab3
cd lab3
for file in a b c 1 2 3; do
  touch $file
  for file2 in a b c 1 2 3; do
    touch $file$file2
    for file3 in a b c 1 2 3; do
      touch $file$file2$file3
      for file4 in a b c 1 2 3; do
        touch $file$file2$file3$file4
      done
    done
  done
done
```

Use the ```ls``` command to see all the files you just created:
```
ls
```

Now try filename globbing to display only the files with just a single character filename, like this:
```
ls ?
```

For the next 3 steps, take a screenshot that shows all 3 commands and their output.
* Create an ```ls``` command to only display filenames that **start with the letter a and are up to 3 characters long**.
* Create an ```ls``` command to only display filenames that have **only 2 characters** in them.
* Create an ```ls``` command to only display filenames that are **3-digit numbers**.

## Escaping special characters
Create an ```echo``` command to show the following output exactly as it is shown: 
```
"Hi. How are you?", he said.
```

## Locating commands
What 3 commands could you use to find out where bash gets the echo command from? Try each one.

## Command history
How many commands are being kept in your bash history? Run a command to show the maximum number of commands to be saved in your history.

## Submission of Results

Capture screenshots of the terminal window showing your prompt, commands, and as much of the output for each command as fits in the window with your command still showing. Submit a single PDF file to blackboard containing your screenshots in the order they were performed, along wityh your responses to the questios asked in the lab.
