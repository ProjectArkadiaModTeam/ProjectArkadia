@echo off 

taskkill /im arma3server.exe /F

REM 3 seconds delay, emulated with ping
ping 127.0.0.1 -n 2 > nul
ping 127.0.0.1 -n 2 > nul
ping 127.0.0.1 -n 2 > nul

"C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe" -pack "Source\projectarkadia_client" "C:\Arma_3_Server\mpmissions\projectarkadia.Tanoa.pbo"

REM 3 seconds delay, emulated with ping
ping 127.0.0.1 -n 2 > nul

"C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe" -pack "Source\projectarkadia_client" "Dist\mpmissions\projectarkadia.Tanoa.pbo"

REM 3 seconds delay, emulated with ping
ping 127.0.0.1 -n 2 > nul

"C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe" -pack "Source\projectarkadia_server" "C:\Arma_3_Server\@projectarkadia_server\addons\projectarkadia_server.pbo"

REM 3 seconds delay, emulated with ping
ping 127.0.0.1 -n 2 > nul

"C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe" -pack "Source\projectarkadia_server" "Dist\@projectarkadia_server\addons\projectarkadia_server.pbo"

REM 3 seconds delay, emulated with ping
ping 127.0.0.1 -n 2 > nul

del "C:\Arma_3_Server\mpmissions\supremacy.Tanoa.pbo.bak"
del "C:\Arma_3_Server\@supremacy_server\addons\supremacy_server.pbo.bak"

start C:\Arma_3_Server\LaunchServer2.bat
@exit