@echo off
color D

call :checkPermissions
call :xHybrid en Youtube!
echo Press any key to clean cache...
pause > nul
cls

rd /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP

for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")

cls
call :xxHybrid en Youtube!
echo LOGS AND CACHE HAVE BEEN DELETED!
echo.
echo Press any key to exit...
pause > nul
exit

:checkPermissions
fsutil dirty query %systemdrive% >nul
if %errorLevel% NEQ 0 (
	echo Try again as Administrator.
	echo.
	echo Press any key to exit...
	pause > nul
	exit
)
exit /b

:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:xHybrid en Youtube!


exit /b