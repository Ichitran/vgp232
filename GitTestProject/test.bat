@ECHO off
test.sh

set /p myvar= < test.tmp 

del test.tmp

echo %myvar%