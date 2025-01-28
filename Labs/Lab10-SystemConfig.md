# Lab 10 System Configuration

## Overview
In this lab, you will practice using the system configuration commands and review existing configuration setting.

## Tasks
1. Using the `locale` command, identify your current language setting.
```
locale
```
1. What timezone name is in your **/etc/timezone** file?
```
cat /etc/timezone
```
Set a temporary timezone for your shell by running `export TZ=GMT`. What date and time does the `date` command show?
```
export TZ=GMT
date
```
Start a second shell in another window and run the `date` command.
```
date
```
What timezone is that one using? Clear the temporary timezone setting from the first shell.
```
unset TZ
```
1. Update your system clock using NTP. Install the ntpdate software package if necessary.
```
sudo ntpdate 0.pool.ntp.org
```
How much adjustment did you clock need? Re-run the command to update your system clock. Did it adjust again? 
1. Set your system location to some place you would like it to be.
```
sudo hostnamectl set-location "Some Location"
```
Verify that you see the new location when you run `hostnamectl` with no options. What got put in **/etc/machine-info**?
```
cat /etc/machine-info
```
What IP address is associated with your hostname in **/etc/hosts**?
```
grep yourhostname /etc/hosts
```
1. Identify your current swap device.
```
swapon
```
1. How much swap space is currently being used?
```
free
```
1. Create a **500MB** file called **/newswap**. Set the permissions so that only root has access to the **newswap** file. Tell the kernel to start using the **newswap** file for swap space and verify it is now showing that device and that the `free` command shows the additional space for swap.
```
sudo fallocate -l 500MB /newswap
sudo chmod 600 /newswap
sudo mkswap /newswap
sudo swapon /newswap
swapon
free
```
1. Create an ssh public-private keypair on your Linux machine for your normal user account. Use the defaults for the questions that `ssh-keygen` asks. Install the public key as an authorized key for ssh access to your account. Test it to ensure you can login to your ssh service without a password now. Install the ssh software package if necessary.
```
ssh-keygen
ssh-copy-id localhost
ssh localhost
logout
```
1. Install the private key (which you saved in the default file named `~/.ssh/id_rsa`) on an ssh client on your host laptop. You will have to research how to do this using a ssh program such as putty, or the included ssh program if you use a mac. Verify that you no longer need a password to log into your Linux system using ```ssh``` by logging into your Linux machine from your host laptop.

## Submission of Results

Capture screenshots of the terminal window showing your prompt, commands, and as much of the output for each command as fits in the window with your command still showing. Submit a single PDF file to blackboard containing your screenshots in the order they were performed, along wityh your responses to the questios asked in the lab.
