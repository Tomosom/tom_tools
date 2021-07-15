@echo off

for %%a in (*.png) do (
    pngquant.exe --force --verbose --ordered --speed=3 --quality=10-100 %%a -o %%a
)

::pause