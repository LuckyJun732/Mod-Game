setlocal enabledelayedexpansion
@echo off
cls
set Dir=%1
set EXE="%~dp0mestool.exe"
cd !DIR!
if exist rmdir /s /q new
mkdir new
for /f "delims=" %%f in ('dir /b *.txt') do (
echo Inserting... %%f
!EXE! c %%~nf.MES %%f .\new\%%~nf.MES
)