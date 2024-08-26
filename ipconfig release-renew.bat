@echo off
ipconfig /release
timeout /t 10 /nobreak > NUL
ipconfig /renew
