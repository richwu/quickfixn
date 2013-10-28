echo off

set TARGET=%1
set CONFIGURATION=%2
set NET_VERSION=%3

if "%1" == "" set TARGET=Rebuild
if "%2" == "" set CONFIGURATION=Release
if "%3" == "" set NET_VERSION=v4
SET PATH=%PATH$;"C:\Windows\Microsoft.NET\Framework64\v4.0.30319"
set BUILD_CMD=MSBuild.exe QuickFIXn.sln /t:%TARGET% /p:Configuration=%CONFIGURATION%;TargetFrameworkVersion=%NET_VERSION%
echo Build command: %BUILD_CMD%
%BUILD_CMD%
