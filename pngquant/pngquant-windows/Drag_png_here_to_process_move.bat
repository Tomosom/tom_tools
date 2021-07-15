@echo off

set path=%~d0%~p0

:start

"%path%pngquant.exe" --force --verbose --ordered --speed=3 --quality=10-100 %1 -o %1

shift
if NOT x%1==x goto start
