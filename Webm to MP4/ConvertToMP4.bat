@echo off
REM === Drag any .webm file onto this .bat to convert it to .mp4 ===
setlocal

REM Path to your ffmpeg.exe (adjust if you moved it)
set "ffmpeg=C:\ffmpeg-8.0-essentials_build\bin\ffmpeg.exe"

REM Get the dropped file path
set "input=%~1"

if "%input%"=="" (
    echo Drag and drop a .webm file onto this script!
    pause
    exit /b
)

REM Get output file name (same folder, .mp4 extension)
set "output=%~dpn1.mp4"

echo Converting: %input%
"%ffmpeg%" -i "%input%" -c:v libx264 -c:a aac "%output%"

echo.
echo ✅ Done! File saved as:
echo %output%
pause
