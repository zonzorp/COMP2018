# Lab 6 Working with data in files

## Overview
In this lab, you will try various commands to view and modify file data. All of these commands must be run as an ordinary Linux user, not as root or or by using sudo or su.

## Tasks

* Use the ```cat```, ```more```, and ```less``` commands to view the contents of **/etc/hosts**.
  ```
  cat /etc/hosts
  more /etc/hosts
  less /etc/hosts
  ```
  Now try the same commands to view the **/etc/services** file to see what differences there are when the file being viewed is bigger.
* Make a directory named **lab6** in your home directory.
  ```
  mkdir ~/lab6
  ```
* Use the ```find``` command to list the regular files in your home directory.
  ```
  find ~ -type f
  ```
  Find the same files again, but this time show a human-friendly size for each file as well as its pathname by using the exec option to the find command. Use output redirection to save the list of files with their sizes in a file called **filesizes.txt** in your **lab6** directory.
  ```
  find ~ -type f -exec ls -sh {} + > ~/lab6/filesizes.txt
  ```
* Use the ```sort``` command on the list of files in your **filesizes.txt** file to sort them by space used and save the sorted list in a file named **sortedfilesizes.txt** in your **lab6** directory.
  ```
  sort -h ~/lab6/filesizes.txt > ~/lab6/sortedfilesizes.txt
  ```
  Challenge: Create a single command using pipes to do the find, then the sort, and then send the sorted list to the ```tail``` command to only include the **5 largest files** in your output list and use output redirection to save that list to a file in your **lab6** directory named **big5.txt**. The file sizes should be human-friendly. Use ```cat``` to verify that your **big5.txt** file has the right results in it.
* Use ```grep``` to save a list of lines from **/etc/services** that have the word **SSL** in them to a file in your **lab6** directory named **ssl-services.txt**.
  ```
  grep SSL /etc/services > ~/lab6/ssl-services.txt
  ```
  Challenge: Use ```grep``` to search **/etc/services** and output only the lines for services whose names end with an **s**. You will have to research the content of the **services** (i.e. ```man 5 services```) file and the ```grep``` command to perform this task. You will also have to create a regular expression pattern to find only the lines with service names that end with an **s**. This one is not easy!
* Copy the **food.txt** file from your **lab5/txts** directory to **lab6/foods.txt**. Use ```nano``` or ```vi```(```vim```) to add several kinds of food (keep the food names to single words for simplicity) to your **lab6/foods.txt** file. For each line in the file, add a word to the end of the line specifying one example of what would eat the food on that line (e.g. _fly spider_). Be sure to keep the original foods in the file and put the word **cat** as the eater of those things (i.e. _mouse cat_).  Use the ```sort``` command twice; first to show the file sorted by food name, then by what would eat it.
  ```
  cp ~/lab5/txts/food.txt ~/lab6/foods.txt
  nano ~/lab6/foods.txt
  sort ~/lab6/foods.txt
  sort -k 2 ~/lab6/foods.txt
  ```
* Use ```sed``` to display your **lab6/foods.txt** file, substituting the word **kitty** for the word **cat** wherever you have it in your **foods.txt** file. Do not modify your **foods.txt** file, only display the changed version. Then run your ```sed``` command again, this time redirecting the output to a file named **kittyfoods.txt** in your **lab6** directory.
  ```
  sed s/cat/kitty/g ~/lab6/foods.txt
  sed s/cat/kitty/g ~/lab6/foods.txt > ~/lab6/kittyfoods.txt
  ```
* Use ```diff``` and ```cmp``` to compare your **foods.txt** file to your **kittyfoods.txt** file.
  ```
  diff ~/lab6/foods.txt ~/lab6/kittyfoods.txt
  cmp ~/lab6/foods.txt ~/lab6/kittyfoods.txt
  ```

## Submission of Results

Capture screenshots of the terminal window showing your prompt, commands, and as much of the output for each command as fits in the window with your command still showing. Submit a single PDF file to blackboard containing your screenshots in the order they were performed, along wityh your responses to the questios asked in the lab.
