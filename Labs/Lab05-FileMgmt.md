# Lab 5 Managing files and directories

## Overview
This lab will introduce you to creating and managing directories and files using the bash command line interface. All commands in this lab are to be run using your normal user account only, without the use of sudo or su.

## Tasks

* In your home directory, make a new directory named **lab5**.
  ```
  mkdir ~/lab5/
  ```
* Change to that directory and use curl with tar to retrieve some files from the web for us to work with.
  ```
  cd ~/lab5/
  curl https://zonzorp.github.io/COMP2018/files.tgz|tar xzf -
  ```
* Use ```ls``` to explore the files you extracted.
  ```
  ls
  ls -R
  ```
* Use the ```tree``` command to see what the directory structure created looks like.
  ```
  tree
  ```
* In your **home directory**, make a new directory called **backups**. Copy the complete tree of files you just downloaded to your **lab5** directory to the backups directory. Use ```tree``` to verify that your backup created what you expected. **Do not modify anything in the backups directory for the remainder of this lab.**
  ```
  mkdir ~/backups
  cp -r ~/lab5 ~/backups/
  tree ~/backups
  ```
* Use the ```file``` command to find out what the content of the files in the **catfiles** directory are and rename those files to have appropriate extensions.
  ```
  cd ~/lab5/catfiles
  file *
  mv <a filename without any extension> <a filename with an appropriate extension> **Repeat as needed**
  ```
* Make a new directory in **lab5** to hold text files and name it **txts**. Move the text files from the **catfiles** directory to the **txts** directory.
  ```
  mkdir ~/lab5/txts
  mv ~/lab5/catfiles/*.txt ~/lab5/txts/
  ```
* Make a new directory in **lab5** to hold image files and name it **images**. Make a new directory to hold jpg files in the **images** directory and name it **jpgs**. Make another for png files in the **images** directory and name it **pngs**. Move the **jpg** files from the **catfiles** and **whoisit** directories to your new **jpgs** directory and the **png** files from the **catfiles** directory to your new **pngs** directory. Remove the old **catfiles** and **whoisit** directories that should now be empty. Use the ```tree``` command to verify you have completed these commands correctly.
  ```
  mkdir -p ~/lab5/images/jpgs ~/lab5/images/pngs
  mv ~/lab5/*/*.jpg ~/lab5/images/jpgs/
  mv ~/lab5/*/*.png ~/lab5/images/pngs/
  rmdir ~/lab5/catfiles ~/lab5/whoisit
  tree ~/lab5
  ```
* Make a new directory in **lab5** to hold links to all your image files and name it **webpics**. Create symbolic links for all the **jpg** files and **png** files in your new **webpics** directory. Run the ```tree``` command one more time to verify you got the links you should have.
  ```
  mkdir ~/lab5/webpics
  cd ~/lab5/webpics
  ln -s ../images/*/* .
  tree ~/lab5
  ```
* Open your file manager and browse to your lab5 directory. Try viewing the directories you have created to see what files are there using the GUI.


## Submission of Results

Capture screenshots of the terminal window showing your prompt, commands, and as much of the output for each command as fits in the window with your command still showing. Submit a single PDF file to blackboard containing your screenshots in the order they were performed, along wityh your responses to the questios asked in the lab.
