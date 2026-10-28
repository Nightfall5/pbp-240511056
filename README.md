# Tugas Pertemuan 1 — Pemrograman Berbasis Platform

Repository ini memuat hasil tugas Pertemuan 1 mata kuliah **Pemrograman Berbasis Platform (PBP)** dengan judul **“Eksplorasi Platform & Setup Environment”**, serta implementasi tugas halaman antarmuka login bertema **Neo-Brutalisme** berdasarkan referensi Google Stitch.

## Identitas Mahasiswa

- **Nama:** Rayhan Adhyfa Firdaus
- **NIM:** 240511056
- **Kelas:** TI24A
- **Program Studi:** S-1 Teknik Informatika
- **Dosen Pengampu:** Sugiyanto, M.Kom.

## Isi Repository

```text
.
├── README.md
├── T1_PBP_240511056_Rayhan_Adhyfa_Firdaus.pdf
├── analisis-platform.md
├── index.html
├── css/
│   └── style.css
├── js/
│   └── app.js
└── screenshots/
    ├── terminal-setup.png
    ├── login-page-desktop.png
    └── login-page-mobile.png
```

- **index.html** — implementasi halaman login mahasiswa bertema Neo-Brutalisme (referensi Google Stitch).
- **css/style.css** & **js/app.js** — modul styling dan logika interaksi antarmuka (validasi input, toggle password, feedback status).
- **screenshots/login-page-desktop.png** & **screenshots/login-page-mobile.png** — tangkapan layar tampilan desktop dan mobile dari halaman yang berjalan langsung di browser.
- **Laporan PDF final** — berkas untuk pengumpulan melalui LMS, berisi identitas, bukti setup environment, analisis komparatif, kesimpulan, refleksi, dan referensi.
- **analisis-platform.md** — naskah analisis perbandingan Web, Desktop, dan Mobile, termasuk kesimpulan, refleksi, dan referensi.
- **screenshots/terminal-setup.png** — bukti screenshot terminal asli untuk hasil verifikasi tools pengembangan. Screenshot ini juga disematkan di laporan PDF.

## Implementasi Halaman Login (Neo-Brutalist)

Halaman login mahasiswa dirancang mengacu pada visual archetype **Neo-Brutalism** hasil ekspor Google Stitch:

### Karakteristik & Fitur Antarmuka
- **Identitas Visual:** Menggunakan latar krem berpola kisi (`#fcfaed`), kartu login kuning cerah (`#ffff00`), garis tepi hitam tebal 4–5px (`#1b1c15`), dan bayangan tegas terarah tanpa gradien atau Gaussian blur (`box-shadow: 8px 8px 0px #1b1c15`).
- **Tipografi:** Tipografi geometris tegas *Space Grotesk* untuk judul dan heading, serta *Space Mono* untuk label formulir, data teknis, badge status, dan pita berjalan (*ticker*).
- **Toggle Visibilitas Password:** Tombol switch interaktif yang mengubah tipe input antara `password` dan `text` secara dinamis dengan ikon responsif dan label aksesibilitas (`aria-label`, `aria-pressed`).
- **Validasi Formulir Klien:** Validasi kelengkapan NIM/Email dan kata sandi (minimal 8 karakter) dengan feedback visual galat secara real-time dan notifikasi demonstrasi status tanpa klaim autentikasi palsu.
- **Responsif Desktop & Mobile:** Penyesuaian tata letak untuk resolusi desktop (1440px) dan perangkat seluler (390px) tanpa terjadinya *horizontal scrolling*.
- **Opsi SSO Mockup:** Komponen tombol masuk Google dan GitHub disajikan secara proporsional sebagai mockup visual antarmuka dengan pemberitahuan bahwa server autentikasi eksternal belum dihubungkan.

### Cara Menjalankan Halaman Login

Halaman ini dibangun dengan teknologi web standar tanpa dependensi build step:

1. **Membuka Langsung di Browser:**
   Buka berkas `index.html` langsung pada browser web pilihan Anda:
   ```text
   file:///D:/Project_Kuliah/MK_PBP_PAK_SUGIYANTO/index.html
   ```

2. **Menjalankan via HTTP Server Lokal (Alternatif):**
   ```bash
   # Menggunakan Python
   python -m http.server 8000

   # Atau menggunakan Node.js
   npx serve .
   ```
   Buka `http://localhost:8000` pada browser.

## Ringkasan Setup Environment

Hasil pemeriksaan environment pada komputer:

| Tool | Status dan versi |
|---|---|
| Git | Terpasang — `git version 2.55.0.windows.3` |
| Node.js | Terpasang — `v20.18.0` |
| NPM | Terpasang — `10.8.2` |
| Java JDK | Terpasang — OpenJDK Temurin `17.0.20.1`; `javac 17.0.20.1` |
| Visual Studio Code | Terpasang — `1.142.0` |
| Android Studio | Terpasang — versi `2026.2`, build `AI-262.9437.185.2621.16467767` |
| Android SDK | Terkonfigurasi di `C:\\Users\\rayha\\AppData\\Local\\Android\\Sdk` |

## Analisis Komparatif dan Refleksi

Uraian enam aspek perbandingan platform (bahasa utama, arsitektur, distribusi, keunggulan, keterbatasan, dan contoh aplikasi), kesimpulan pemilihan platform, refleksi pembelajaran, serta tujuh referensi dokumentasi tersedia pada [analisis-platform.md](./analisis-platform.md).
