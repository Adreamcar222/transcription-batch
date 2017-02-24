@echo off
:restart
cls
color 0a
mode 1000
echo Transcribe 1.0
echo Main menu
echo 1)Enter as Guest
echo 2) Log in/Sign Up
echo 3) Exit
set /p choice1=Your Choice: 
if %choice1% == 1 goto guestset
if %choice1% == 2 goto enter
if %choice1% == 3 exit
goto restart
:guestset
set /a name=Guest 21761
goto start
:enter
cls
set /p name=Username: 
pause
:start
cls
set /p transcription=Text you want to transcribe: 
echo All text will clear but your transcription is now saved.
pause
cls
echo Select a format to transcribe to.
echo 1) .txt
echo 2) .bat
echo 3) .vbs
echo 4) Other
set /p format=Transcribe as: 
if %format% == 1 goto txt
if %format% == 2 goto bat
if %format% == 3 goto vbs
if %format% == 4 goto other
goto start
:txt
cls
echo %transcription% > transcription.txt
echo This file was made possible thanks to Benjamin Horowitz (Adreamcar222) >> transcription.txt
echo Your file was created with the transcription!
pause
exit
:bat
cls
echo @echo off > transcription.bat
echo mode 1000 >> transcription.bat
echo cls >> transcription.bat
echo echo %transcription% >> transcription.bat
echo echo This file was made possible thanks to Benjamin Horowitz (Adreamcar222) >> transcription.bat
echo pause >> transcription.bat
echo Your file was created with the transcription!
pause
exit
:vbs
cls
echo x=MsgBox("%transcription%", 0+16, "Transcription Created By Benjamin Horowitz") > transcription.vbs
echo Your file was created with the transcription!
pause
exit
:other
set /p filetype=File Extension:
echo %transcription% > transcription.%filetype%
echo Your file was created with the transcription!
pause
exit