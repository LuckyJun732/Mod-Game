setlocal enabledelayedexpansion
@echo off
cls
set Dir=%1
set EXE="%~dp0mestool.exe"
cd !DIR!
for /f "delims=" %%f in ('dir /b *.mes') do (
echo Extracting... %%f
!EXE! p %%f %%~nf.txt
)