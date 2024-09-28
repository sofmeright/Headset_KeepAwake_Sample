#SingleInstance Force
#Persistent
OnExit, ExitSub


Loop
{
	RunWait, "C:\Program Files\VideoLAN\VLC\vlc.exe" --play-and-exit --no-repeat --no-loop --no-one-instance --no-qt-system-tray --aout="directx" --directx-audio-device={6f0a1736-ccef-40c5-890a-0eaf1952c71a} "C:\Media\#TurtleBeach Headset\19000.mp3", , Hide, MPG123PID
	Sleep, 60000
}


ExitSub:
Process, Close, %MPG123PID%
ExitApp