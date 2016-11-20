@echo off
goto killitunes
goto deltemp
goto delprefetch

:killitunes
title "Killing Processes..."
taskkill /F /IM iTunesHelper

:deltemp
title "Deleting temporary files..."
del /s /f /q C:\Windows\Temp\*.* 
rd /s /q C:\Windows\Temp 
md C:\Windows\Temp 

:delprefetch
title "Delete prefetch files"
del /s /f /q %temp%\*.* 
rd /s /q %temp% 
md %temp% 

title "Done."
