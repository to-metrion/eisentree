@echo off
SET interactive=1
ECHO %CMDCMDLINE% | FIND /I "/c" >NUL 2>&1
IF %ERRORLEVEL% == 0 SET interactive=0

:: eisentreecalc runs the site out of the eisentree path (see the html javascript srcs),
:: so copy the site contents to an eisentree folder for the localhost
robocopy _css eisentree\_css /s /mir
robocopy _images eisentree\_images /s /mir
robocopy _includes eisentree\_includes /s /mir
robocopy _layouts eisentree\_layouts /s /mir
robocopy _scripts eisentree\_scripts /s /mir

cd %~dp0
start http://127.0.0.1:4000
bundle exec jekyll serve

IF "%interactive%"=="0" PAUSE
EXIT /B 0
