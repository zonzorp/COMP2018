# Lab 7 User and group accounts

## Overview
In this lab, you will practice creating user and group accounts. You will also start using file permissions to control access to files and directories.

## Multiple user accounts will be used for this lab
Creating accounts and groups requires superuser privilege, so those commands will require the use of ```sudo```. Once you have created users, you will be perorming tasks as those users, so for those tasks, you will be required to login as those users. For this purpose, it is recommended that in a terminal window, you use
```
login username
```
to start a login shell as the desired user in that window. When you are done running commands as that user, you can use the 
```
logout
```
command to return to the shell you were using before you entered the ```login username``` command.

## Create a group for our users to use for collaboration, and a group directory for shared files
1. Create a group named **developers**.
```
sudo addgroup developers
```
1. Create a directory named **/projects/bigdeal** owned by **root** and the **developers** group.
1. The directory must be full access for the owner and the group, with no access for any other users and it must have the **set-group-id** bit turned **on**.
1. Create a subdirectory in **/projects/bigdeal** named **incoming**, with the same ownership and permissions as **/projects/bigdeal**.
```
sudo mkdir -p /projects/bigdeal/incoming
sudo chgrp -R developers /projects/bigdeal
sudo chmod -R 2770 /projects/bigdeal
```

## Create accounts for our users
1. Create a user named **harry** with a home directory.
```
sudo adduser harry
```
1. Create a user named **sally** with a home directory.
```
sudo adduser sally
```
1. Create a user named **cupid** with a home directory.
```
sudo adduser cupid
```
1. Add **harry**, **sally** and **cupid** to the **developers** group as a supplementary group for each of them.
```
sudo adduser harry developers
sudo adduser sally developers
sudo adduser cupid developers
```

## Log into the **harry** account and perform the following tasks:
```
login harry
```
1. Create a file named **myclothes.txt** in **harry**'s home directory with 5 lines of text in it, each line containing some item of clothing.
```
nano myclothes.txt
```
1. Copy that file to a file named **harry** in **/projects/bigdeal/incoming**.
```
cp myclothes.txt /projects/bigdeal/incoming/harry
logout
```

## Log into the **sally** account and perform the following tasks:
```
login sally
```
1. Create a file named **myfurniture.txt** in **sally**'s home directory with 5 lines of text in it, each line containing some kind of furniture.
```
nano myfurniture.txt
```
1. Copy that file to a file named **sally** in **/projects/bigdeal/incoming**.
```
cp myfurniture.txt /projects/bigdeal/incoming/sally
logout
```

## Log into the **cupid** account and perform the following tasks:
```
login cupid
```
1. Using the ```paste``` command, create a file called **when-harry-met-sally.txt** in **/projects/bigdeal** by pasting together the two files **harry** and **sally** and use redirection to put the output into the **incoming** directory.
```
cd /projects/bigdeal/incoming
paste harry sally > ../when-harry-met-sally.txt
```
1. Remove the two files from the incoming directory.
```
rm harry sally
```
1. Use ```cat``` to display the contents of the **when-harry-met-sally.txt** file.
```
cd ..
cat when-harry-met-sally.txt
logout
```


## Submission of Results

Capture screenshots of the terminal window showing your prompt, commands, and as much of the output for each command as fits in the window with your command still showing. Submit a single PDF file to blackboard containing your screenshots in the order they were performed, along wityh your responses to the questios asked in the lab.
