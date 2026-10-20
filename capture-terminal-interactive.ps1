Add-Type -AssemblyName System.Windows.Forms
$repoDir = "D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO"
$target = "$repoDir\screenshots\terminal-setup.png"
if (-not (Test-Path "$repoDir\screenshots")) { New-Item -ItemType Directory -Path "$repoDir\screenshots" -Force }

Clear-Host
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host " TUGAS 1 PEMROGRAMAN BERBASIS PLATFORM - VERIFIKASI ENVIRONMENT" -ForegroundColor Cyan
Write-Host " Nama: Rayhan Adhyfa Firdaus  |  NIM: 240511056  |  Kelas: TI24A" -ForegroundColor Cyan
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO> git --version" -ForegroundColor Yellow
git --version
Write-Host ""
Write-Host "PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO> node --version" -ForegroundColor Yellow
node --version
Write-Host ""
Write-Host "PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO> npm --version" -ForegroundColor Yellow
npm --version
Write-Host ""
Write-Host "PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO> java -version" -ForegroundColor Yellow
java -version
Write-Host ""
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host " PETUNJUK:" -ForegroundColor Green
Write-Host " 1. Tekan Win + Shift + S (atau Alt + PrtScn) untuk screenshot jendela ini." -ForegroundColor Green
Write-Host " 2. Setelah di-snip, gambar di clipboard otomatis tersimpan ke:" -ForegroundColor Green
Write-Host "    $target" -ForegroundColor Green
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host "Menunggu screenshot di clipboard (tekan Ctrl+C untuk keluar)..."

# Bersihkan clipboard lama jika bukan tangkapan baru
[System.Windows.Forms.Clipboard]::Clear()

while ($true) {
    Start-Sleep -Milliseconds 500
    if ([System.Windows.Forms.Clipboard]::ContainsImage()) {
        try {
            $img = [System.Windows.Forms.Clipboard]::GetImage()
            if ($img -ne $null) {
                $img.Save($target, [System.Drawing.Imaging.ImageFormat]::Png)
                $img.Dispose()
                Write-Host ""
                Write-Host "[SUKSES] Screenshot berhasil disimpan ke:" -ForegroundColor Green
                Write-Host "$target" -ForegroundColor Cyan
                Start-Sleep -Seconds 3
                break
            }
        } catch {
            Write-Host "Gagal menyimpan: $_" -ForegroundColor Red
        }
    }
}
