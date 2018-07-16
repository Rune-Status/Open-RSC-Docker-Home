@echo off
echo:
echo Pulling recent updates from the Open-RSC Game repository.
echo:
Windows\make pull
echo:
echo:
echo Starting any stopped Docker containers.
echo:
Windows\make start
echo:
echo:
set PATH=Ant/bin
echo:
echo:
echo Compiling the game client.
echo:
call ant -f Game/client/build.xml compile
echo:
echo:
echo Compiling the game server.
echo:
call ant -f Game/server/build.xml compile
echo:
echo:
echo Starting the game client in a new window.
echo:
call START "" ant -f Game/client/build.xml runclient
echo:
echo:
echo Starting the game server in the current window.
echo:
call ant -f Game/server/build.xml runserver
echo:
pause
