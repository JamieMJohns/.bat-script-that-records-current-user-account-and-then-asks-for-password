@echo off
REM REM=ignore this line when running script
REM @echo off= turn off automated text outputs
REM echo A  = manual output of string A
REM bat file created by Jamie johns 2018
color A
REM above sets cmd text color to bright green
for /F %%i in ('whoami /user') do set accnt=%%i
REM above records user name from command 'whoami /user'
REM and stores this string as variable "accnt".
echo PROGRAM DESCRIPTION #################################
echo Created by Jamie johns 2018;
echo this is a test bat file which automatically records
echo user account of which this program is run in and
echo then applies recorded user name to ask for password.
echo If password is correct, another cmd window is open.
echo:
echo open of cmd (correct password) can be replaced by any
echo file in the original batch file, in addition;
echo if the password is correct and user account is an
echo admin account; the opened file (in this case, newly
echo opened cmd) will have admin privileges).
echo ######################################################
echo:
echo The user is [recorded by program]:
echo %accnt%
echo:
pause
echo:
echo Now (further below) enter password for this account, if password is correct
echo an additional command window will open.
echo:
echo [Note: typed characters, in prompt below, are not shown (neither in hidden or
echo  unhidden characters) for when typing password, as is automatically
echo done with related cmd command for entering password "runas";
echo so it may appear that a password is not being typed, if unsure
echo hit backspace until you think all characters have been deleted
echo (and then retype password]
echo:
runas /env /user:%accnt% "cmd"
REM "file" is the file that is run if password is correct
REM if user account (that this program is run in) has admin
REM privaledges, the opened file will be run in administrator mode (elevated privilges)
REM In addition the program is run in the currently opened environment (account) denoted by "/env" in .bat file script
pause