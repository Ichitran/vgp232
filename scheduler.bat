call cleanbuild.bat
:Loop
TIMEOUT /T 10
@echo off

call "D:\nant\bin\nant.exe" "

Goto Loop