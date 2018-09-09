@echo off
color A
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
pause
for /F %%i in ('whoami /user') do set accnt=%%i
echo The user is [recorded by program]:
echo:
echo %accnt%
echo:
runas /env /user:%accnt% "cmd"
pause