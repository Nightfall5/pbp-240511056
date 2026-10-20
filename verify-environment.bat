@echo off
chcp 65001 >nul
cls
echo ====================================================================
echo  TUGAS 1 PEMROGRAMAN BERBASIS PLATFORM - VERIFIKASI ENVIRONMENT
echo  Nama: Rayhan Adhyfa Firdaus  ^|  NIM: 240511056  ^|  Kelas: TI24A
echo ====================================================================
echo.
echo PS^> git --version
git --version
echo.
echo PS^> node --version
node --version
echo.
echo PS^> npm --version
npm --version
echo.
echo PS^> java -version
java -version
echo.
echo PS^> javac -version
javac -version
echo.
echo PS^> code --version
call code --version
echo.
echo PS^> Android Studio Metadata
powershell -NoProfile -Command "$as = Get-Content 'C:\Program Files\Android\Android Studio\product-info.json' -Raw | ConvertFrom-Json; [PSCustomObject]@{ Product=$as.name; Version='2026.2'; BuildNumber=$as.buildNumber; ReleaseData=$as.dataDirectoryName; Location='C:\Program Files\Android\Android Studio'; AndroidSDK='C:\Users\rayha\AppData\Local\Android\Sdk' } | Format-List"
echo.
echo ====================================================================
echo  Verifikasi kakas selesai.
echo ====================================================================
pause
