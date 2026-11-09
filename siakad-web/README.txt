SIAKAD Mini - Website Sistem Informasi Akademik

ISI
- index.html           : aplikasi web (satu file, tanpa instalasi)
- database_siakad.sql  : skrip database MySQL (DDL, data simulasi, query)

CARA MENJALANKAN LOKAL
Buka index.html di browser (klik dua kali).

AKUN DEMO (password sama dengan username)
- Mahasiswa : 2023001
- Dosen     : 0601018501
- Admin     : admin

CARA DEPLOY KE URL PUBLIK
- Netlify : buka app.netlify.com/drop, seret folder siakad-web ke halaman tersebut.
- Vercel  : unggah folder ke repositori GitHub, impor di Vercel (preset Other), Deploy.
- Render  : buat Static Site dari repositori GitHub, kosongkan build command,
            publish directory diisi titik (.).
- GitHub Pages : aktifkan Pages pada repositori (branch utama, folder root).

CATATAN
Login dan penyimpanan data berjalan di browser (simulasi). Untuk sistem nyata,
pindahkan autentikasi dan data ke backend dengan database MySQL
(gunakan database_siakad.sql).
