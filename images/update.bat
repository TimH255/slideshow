@echo off

echo ^<!DOCTYPE html^>>../slideshow.html
echo ^<html^>>>../slideshow.html

echo ^<head^>>>../slideshow.html
echo   ^<title^>Simple Slideshow^</title^>>>../slideshow.html

echo   ^<meta name="viewport" content="width=device-width, initial-scale=1"^>>>../slideshow.html
echo   ^<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type"^>>>../slideshow.html

echo   ^<link rel="stylesheet" href="style.css"^>            >>../slideshow.html

echo ^</head^>>>../slideshow.html

echo ^<body^>>>../slideshow.html
echo   ^<div class="container"^>>>../slideshow.html

setlocal enabledelayedexpansion
for /r %%f in (Slide*) do (

set "var1=%%~nxf"
set "var2=!var1:*_=!"
set "var3=!var2:~0,-4!"

if !var1!==!var2! set "var3=10"

echo     ^<img class="slides fade" id="!var3!" src="images/%%~nxf"^>>>../slideshow.html
)
echo   ^</div^>>>../slideshow.html

echo   ^<script src="script.js"^>^</script^>>>../slideshow.html
echo ^</body^>>>../slideshow.html

pause
