# .bat-script-that-records-current-user-account-and-then-asks-for-password
.bat script that records current user account name (plus domain/system name) and    
then asks for entering of account password to run a file with administrative privileges [if entered password is correct].  

PROGRAM DESCRIPTION #################################  
this is a test bat file which automatically records
user account of which this program is run in and
then applies recorded user name to ask for password.
If password is correct, another cmd window is open.
  
open of cmd (correct password) can be replaced by any
file in the original batch file, in addition;
if the password is correct and user account is an
admin account; the opened file (in this case, newly
opened cmd) will have admin privileges).
######################################################  
  
  
To view the .bat file code; open the file in notepad (or alternatively rename .bat extension to .txt).  
  
 And as with all batch (.bat) scripts; the program is run by simply opening the .bat file  
 [i.e - .bat file is automatically executed in cmd and run as if it were a standalone program]  
   
Files in this respository;  
record_user_name_and_ask_password.bat - the main (.bat) file of interest [includes added comments for understanding each line of the script]  
  
Although it is expected that this .bat script work on various OS (at least for windows), with no errors,   
it has so far only been tested in windows7 and windows10 (64-bit). I am unsure if the .bat script will crash  
(not work) on other OS, as I have not done further research/reading into possible changes between OS in regard to used .bat script.   
