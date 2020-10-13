set /p PW=Crunchyroll link: 
set /p lang=Language? Example. esES, enUS: 
youtube-dl.exe --sub-lang %lang% --write-sub -o 2.mp4 %PW%
IF EXIST 2.mp4 (
     exit
)
youtube-dl.exe -o --sub-lang %lang% --write-sub 2.mp4 %PW%
IF EXIST 2.mp4 (
     exit
)
youtube-dl.exe -o 2.mp4 %PW% --sub-lang %lang% --write-sub
IF EXIST 2.mp4 (
     exit
)
youtube-dl.exe -o 2.mp4 --sub-lang %lang% --write-sub %PW% 
