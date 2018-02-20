@echo off

REM Tekan Win+R, tulis "shell:sendto" dan simpan skrip .bat ini di sana. Sekarang tinggal klik kanan, ke "Send to" dan pilih "Membuat Berkas Pass"
REM Bahan yang dibutuhkan
REM * SCXvid-standalone: https://github.com/soyokaze/SCXvid-standalone/releases
REM * FFmpeg: http://ffmpeg.zeranoe.com/builds/

if exist X:\Lokasi berkas yang dibutuhkan set PATH=%PATH%;X:\Lokasi berkas yang dibutuhkan

echo Creating Keyframes...
set video="%~1"
set video2="%~n1"
ffmpeg -i %video% -f yuv4mpegpipe -vf scale=640:360 -pix_fmt yuv420p -vsync drop - | SCXvid.exe %video2%_keyframes.txt
echo Done

REM pause
