@echo off
title Memulai Aplikasi Slip Gaji LPQ Al-Fath Maulana
echo ==============================================================
echo  🕌 MEMULAI APLIKASI SLIP GAJI LPQ AL-FATH MAULANA
echo ==============================================================
echo.
echo ⏳ Menjalankan server lokal (backend & frontend)...
echo    Jangan tutup jendela ini selama menggunakan aplikasi.
echo.

:: Menjalankan server local di latar belakang
start /b cmd /c "npm run dev"

:: Menunggu 5 detik agar server database & Vite siap
timeout /t 5 /nobreak >nul

echo 🌐 Membuka aplikasi di browser...
:: Membuka url default frontend di browser bawaan Windows
start http://localhost:3010

echo.
echo ==============================================================
echo  ✅ APLIKASI SELESAI DIJALANKAN!
echo  Minimalkan (minimize) jendela ini selama Anda bekerja.
echo  Jika sudah selesai, tekan tombol silang (X) pada jendela ini.
echo ==============================================================
echo.

:: Menjaga terminal tetap terbuka agar server terus berjalan
pause >nul
