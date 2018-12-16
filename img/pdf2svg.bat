@Echo off

set inkscapePath="F:\Program Files\Inkscape\inkscape.exe"
set /a count=0
set inputType=pdf
set outputType=svg

echo This script allows you to convert all files in this folder from one file type to another.



for %%i in (.\*.%inputType%) do (
	set /a count=count+1
	echo %%i to %%~ni.svg
	%inkscapePath% --without-gui --file="%%i" --export-plain-%outputType%="%%~ni.%outputType%"
	)

echo %count% file(s) converted from %inputType% to %outputType%!
	
pause