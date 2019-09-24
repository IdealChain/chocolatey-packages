@echo off

for %%a in (.) do set ID=%%~nxa
choco pack %ID%.nuspec || echo Fail. && goto :quit

for /f %%i in ('dir /b /a:-d /o:d /t:w %ID%.*.nupkg') do set NUPKG="%%i"
choco upgrade %ID% -source "'.;https://chocolatey.org/api/v2/'" -y -f || echo Fail? && goto :quit

:choice
set /p push="Push %NUPKG% now? [y/n] "
if /I "%push%" EQU "Y" goto :push
if /I "%push%" EQU "N" goto :quit
goto :choice

:push
choco push %NUPKG%

:quit