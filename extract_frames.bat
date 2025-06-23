@echo off
setlocal enabledelayedexpansion

if not exist "Dataset_AI_Masterchallange 2025" (
    echo [ERROR] You do not have the required videos folder.
    echo Make sure it is named "Dataset_AI_Masterchallange 2025"
    echo "(yes there is a typo but that is how it was supplied)"
    pause
    exit /b
)

if not exist "frames" (
    echo Creating folder for the extracted frames (/frames)
    mkdir frames
)

:: Take 1 frame every 2 seconds, for the first 10 seconds of every video
for %%f in ("Dataset_AI_Masterchallange 2025\*.mp4") do (
    set "filename=%%~nf"
    echo Extracting frames from: %%f
    ffmpeg -t 10 -i "%%f" -vf fps=1 "frames\!filename!_frame_%%04d.png"
)

echo Done!
pause