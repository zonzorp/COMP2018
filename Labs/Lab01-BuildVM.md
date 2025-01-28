# Lab 1 - Build a VM for the course

## Overview

In this lab, you will install VM software and create a desktop Linux VM suitable for use with this course.

## Software Install

If you already have VMWare, Parallels, or VirtualBox software on your laptop, you do not need to install any software for this course as you can use any of them for this purpose.
Otherwise choose one of these software packages to provide virtual machines on your laptop. If you are using a Mac, you can use any one of VMWare, Parallels, or VirtualBox. If you are on Windows, you are limited to VMWare or VirtualBox.

* VMWare

  Georgian College provides a limited time license for VMWare to students. You should have received an email with instructions to access the college software store online, for both Microsoft software and VMWare software. Follow the instructions contained in the email to download, install and license VMWare.

* VirtualBox

  VirtualBox is provided free by Oracle. It can be downloaded from [Oracle's VirtualBox website](https://www.virtualbox.org). Instructions to install the software are available on the website.

* Parallels

  Parallels is a VM product designed to take advantage of the Mac software ecosystem. It is not free and the college does not provide licenses. If you want to use it, you will have to visit [Parallels](parallels.com) to buy a copy and install it.

## Linux download
For this course, we will be using Ubuntu Linux. You can use other versions of Linux if you wish, but you will have extra work to do for those times when the lab instructions describe things in Ubuntu that are not the same in your distro.
Visit [ubuntu.com](ubuntu.com) and select the download page link. Download the iso file for Ubuntu 18.04 Desktop suitable for your hardware. Most students will use the AMD64 image.

## VM Creation
In your VM software control panel, select to create a new virtual machine (may be called something like _Install from disc or image_). There are several settings you may be asked to choose when creating your VM. The important ones for our purposes are the following:

* VM name

  This is the name for your VM in the control panel of the VM software on your laptop.
  The installed Linux has idea what this name is, and it does not care about it.
  Choose a name that describes what this VM is for (e.g. **Ubuntu 18.04 Desktop for COMP1071**)
  You may be asked this at the very end of the creation, or at the start depending on your software.
  
* Operating system iso and type
  
  You will be asked to choose an iso image to install, this will be the iso you previously downloaded.
  As long as your downloaded image is named ubuntusomething, the VM software should automatically be able to determine that this is a Ubuntu Linux install.
  
* If you are offered easy install, choose that.
* Put your full name in as the _User's Full Name_ or _Display Name_.
* Put only your first name in lowercase with no spaces or non-alphabetic characters as the _Account name_ or _username_.
* Put in a password that you can remember. You cannot recover it if you lose it, so choose wisely.
* If you are asked about sharing folders or printers to the virtual machine, choose no.

After entering the information above, and possibly accepting the default settings for other dialogs related to hardware, you will be presented with a summary of your virtual machine and a button to _Finish_ or _Create VM_. If it does not assign at least 10GB for the disk and 2GB for the memory, click the button for _customize settings_ and adjust those to be at least 10GB disk and 2GB memory. Then click _Finish_ or _Create VM_.

## Linux Install
The VM will automatically boot from the distribution iso image and start the Linux install program. The easy install option may not allow you to set any install options during the install process, but if it does, then it may ask several questions. For the ones we care about the answers are as follows:

* System name
  
  Set it to **ubuntu**, we will be learning how to change it later.
  
* User name and account name and password
  
  Put your full name in as the _User's Full Name_ or _Display Name_.
  Put only your first name in lowercase with no spaces or non-alphabetic characters as the _Account name_ or _username_.
  Put in a password that you can remember. You cannot recover it if you lose it, so choose wisely.
  
* Disk partitioning
  
  Just select **use entire disk**, our virtual machines are very simple.
  
* Software selections
  
  In addition to whatever it selected by default, also select **SSH** if it is offered.

If you selected Easy Install, you may be asked some or none of these questions.

## Linux Login
After the installation process completes, the system will reboot and you will be asked to login. Login with the account name and password you specified during the install process.
This will start the graphical user interface (the _GUI_). You will have a taskbar, some status information icons, and some application launching icons. You should see an app that autoruns showing some info about _What's new in Ubuntu_. You can browse through that app to get an idea of how to use the GUI controls.

Shortly after logging in, the software updater should pop up letting you know there are updates available. Choose to install those and wait until they are done before proceeding, rebooting if it tells you to do so.

One of the application launching icons will be an apps button (bottom left corner, looks like 9 dots arranged in a square) ![UbuntuAppsIcons](../images/UbuntuAppsIcon.png) that lets you find applications by typing some of an application name, or by scrolling through screenfuls of application icons. Find and start up a terminal window.

## Post-install software additions
There are some basic commands we will need to add to the system which VMWare does not include with the easy-install desktop. Run the following commands in a terminal window. Answer yes to any questions you may be asked, and if you get an error telling you there is a lock, wait for a few minutes and try again. Do not just try to remove the lock or give up.

```
sudo apt update
sudo apt install net-tools ssh tree curl wget
```

## Create a snapshot
Use the following command to properly shutdown your ubuntu VM.

```bash
sudo poweroff
```

When the VM has finished shutting down, use your file manager to find the files for your VM, which typically will be in a directory called `Virtual Machines` in your home directory. Open the file for your vm called VMNAME.vmx and add the following line to the end of the file.
```bash
disk.EnableUUID = "TRUE"
```

Now use the VM or Virtual Machine menu in VMWare to create a snapshot. You should create a snapshot after every lab is completed, so that if you mess something up, the worst impact is that you will have to go back to your snapshot and redo the current lab. If you don't have the snapshots, you will have to start back at lab 0 if you mess up your VM during the semester. Once you have made the snapshot, you can run the VM again in VMWare so that it is ready for use in the next lab.

## Submission Criteria
On your host laptop, take a snapshot of the full screen of your virtual machine, showing the installed system with a terminal window open showing your command prompt clearly. Save that snapshot as a jpg or png file and submit that for Lab 1 on Blackboard.
