# Analisis Komparatif Platform Web, Desktop, dan Mobile

**Mata Kuliah:** Pemrograman Berbasis Platform  
**Nama:** Rayhan Adhyfa Firdaus  
**NIM:** 240511056  
**Kelas:** TI24A

## Perbandingan Platform

| Aspek | Web | Desktop | Mobile |
|---|---|---|---|
| Bahasa utama | HTML untuk menyusun struktur halaman, CSS untuk tampilan, serta JavaScript atau TypeScript untuk interaksi. Bagian server dapat menggunakan bahasa lain sesuai kebutuhan aplikasi. [1][2] | Bergantung pada sistem operasi dan teknologi yang dipilih. Contohnya C# dengan .NET untuk aplikasi Windows, Swift untuk aplikasi macOS, atau JavaScript, HTML, dan CSS dengan Electron untuk aplikasi lintas sistem operasi. [3][4] | Kotlin atau Java umum digunakan untuk Android, sedangkan Swift atau Objective-C digunakan pada ekosistem Apple. Pengembangan lintas platform juga dapat memakai Dart melalui Flutter atau JavaScript/TypeScript melalui React Native. [5][6] |
| Arsitektur | Umumnya menggunakan model client-server. Browser memuat halaman dan dapat bertukar data dengan server melalui HTTP/HTTPS. Ada juga situs statis yang tidak membutuhkan pemrosesan server untuk setiap interaksi. [2] | Dipasang dan dijalankan sebagai aplikasi pada sistem operasi komputer. Aplikasi dapat memproses data secara lokal, menggunakan file dan layanan sistem operasi, atau terhubung ke server jika diperlukan. [3][4] | Dipasang pada sistem operasi perangkat dan dapat menggunakan API perangkat, seperti kamera, lokasi, sensor, dan notifikasi sesuai dukungan sistem serta izin pengguna. Aplikasi dapat menyimpan data secara lokal atau mengakses layanan daring. [5][6] |
| Cara distribusi | Aplikasi ditempatkan pada server atau layanan hosting dan diakses melalui URL menggunakan browser. Perubahan yang diterbitkan di server umumnya dapat digunakan pengguna tanpa memasang ulang aplikasi. [1][2] | Umumnya dibagikan melalui installer atau paket aplikasi, toko aplikasi, atau sistem distribusi internal. Cara pengemasan dan pemasangannya bergantung pada sistem operasi serta teknologi aplikasi. [3][4] | Umumnya tersedia melalui toko aplikasi seperti Google Play dan Apple App Store. Pada platform tertentu, distribusi juga dapat dilakukan melalui jalur lain yang diizinkan, misalnya distribusi internal atau unduhan langsung dengan ketentuan yang berlaku. [5][7] |
| Keunggulan | Mudah diakses dari perangkat yang memiliki browser, tidak selalu memerlukan instalasi, dan pembaruan dapat dikelola secara terpusat. Cocok untuk layanan yang perlu dijangkau banyak pengguna. | Dapat terintegrasi dengan sistem operasi dan perangkat komputer, serta cocok untuk pekerjaan yang membutuhkan pemrosesan lokal, pengelolaan file, atau penggunaan aplikasi dalam waktu lama. | Praktis digunakan saat bepergian dan dapat memanfaatkan fitur perangkat mobile. Aplikasi juga dapat dirancang untuk menyimpan sebagian data secara lokal ketika koneksi terbatas. |
| Keterbatasan | Pengalaman penggunaan dapat berbeda antar-browser dan perangkat. Fitur tertentu bergantung pada dukungan browser, kebijakan keamanan, serta koneksi internet jika aplikasi memerlukan server. | Perlu mempertimbangkan perbedaan sistem operasi, proses instalasi, ukuran aplikasi, dan pembaruan. Aplikasi yang dibuat khusus untuk satu sistem operasi belum tentu dapat langsung dijalankan di sistem operasi lain. | Perlu memperhatikan ukuran layar, baterai, memori, perbedaan perangkat dan versi sistem operasi, serta izin akses fitur perangkat. Publikasi melalui toko aplikasi juga dapat memerlukan proses peninjauan. |
| Contoh aplikasi | Gmail versi web, Google Docs versi web, dan portal akademik berbasis browser. | Visual Studio Code versi desktop, Microsoft Word versi desktop, dan aplikasi kasir desktop. | Google Maps pada Android/iOS, WhatsApp pada perangkat mobile, dan aplikasi mobile banking. |

## Kesimpulan

Web, desktop, dan mobile memiliki karakteristik yang berbeda. Web mengutamakan akses melalui browser dan pembaruan terpusat. Desktop cocok ketika integrasi dengan sistem operasi komputer atau pemrosesan lokal menjadi kebutuhan penting. Mobile memudahkan penggunaan saat berpindah tempat dan menyediakan akses ke fitur perangkat genggam. Pemilihan platform sebaiknya mengikuti kebutuhan pengguna, lingkungan perangkat, fitur yang diperlukan, dan cara aplikasi akan dipelihara.

## Refleksi Pembelajaran dan Setup Environment

Bagi saya, platform Web merupakan platform yang paling menarik untuk dipelajari karena saya ingin memahami proses pengembangan aplikasi secara menyeluruh, mulai dari merancang tampilan, menghubungkan frontend dengan backend, mengelola data, sampai melakukan deployment agar aplikasi dapat digunakan melalui browser. Saya tertarik bukan hanya membuat aplikasi terlihat bagus, tetapi juga memahami bagaimana aplikasi bekerja dan menyelesaikan kebutuhan penggunanya.

Menurut saya, salah satu hal penting dalam mempelajari Pemrograman Berbasis Platform adalah memahami bahwa setiap platform mempunyai karakteristik, keunggulan, dan keterbatasan yang berbeda. Web menawarkan kemudahan akses dan pembaruan terpusat, sedangkan Desktop dan Mobile mempunyai kelebihan tersendiri sesuai kebutuhan pengguna dan kemampuan perangkatnya.

Tantangan dalam menyiapkan environment pengembangan adalah memastikan setiap tools yang diperlukan tersedia, dapat dikenali oleh terminal, dan mempunyai versi yang sesuai. Saya perlu memverifikasi kondisi sebenarnya melalui perintah terminal, membaca pesan kesalahan dengan teliti, serta memeriksa dokumentasi resmi apabila muncul masalah. Saya tidak ingin hanya mengikuti langkah instalasi tanpa memahami hasilnya.

Ke depannya, saya akan membiasakan diri mengerjakan proyek secara bertahap, menguji setiap perubahan, mencatat masalah dan solusinya, serta menggunakan Git dan GitHub untuk mengelola versi kode. Saya juga ingin meningkatkan kemampuan membangun aplikasi dari tahap perencanaan hingga deployment. Dengan cara tersebut, saya berharap dapat menjadi pengembang yang tidak hanya mampu menulis kode, tetapi juga memahami proses pengembangan dan pemeliharaan aplikasi secara bertanggung jawab.

## Referensi

1. MDN Web Docs. *Your first website*. https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Your_first_website
2. MDN Web Docs. *How the web works*. https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works
3. Microsoft Learn. *Windows app development documentation*. https://learn.microsoft.com/en-us/windows/apps/
4. Electron. *Introduction*. https://www.electronjs.org/docs/latest/
5. Android Developers. *Kotlin and Android*. https://developer.android.com/kotlin
6. Apple Developer. *Tools and distribution*. https://developer.apple.com/documentation/technologyoverviews/tools-and-distribution
7. Android Developers. *Publish your app*. https://developer.android.com/studio/publish
