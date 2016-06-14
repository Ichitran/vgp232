@echo off

if "%W_SCRIPTS%"=="" GOTO SET_SCRIPTS_ENV
GOTO:EOF

:SET_SCRIPTS_ENV
set W_SCRIPTS=1
set path=w:\scripts;%PATH%