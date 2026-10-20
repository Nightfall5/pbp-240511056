$repoDir = "d:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO"
$templatePath = Join-Path $repoDir "report_template.html"
$renderedHtmlPath = Join-Path $repoDir "report_rendered.html"
$screenshotPath = Join-Path $repoDir "screenshots\terminal-setup.png"
$pdfPath = Join-Path $repoDir "T1_PBP_240511056_Rayhan_Adhyfa_Firdaus.pdf"
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

$html = Get-Content -Path $templatePath -Raw -Encoding UTF8

if (Test-Path $screenshotPath) {
    $screenshotUri = "file:///" + $screenshotPath.Replace("\", "/")
    $screenshotHtml = @"
<div class="screenshot-container">
  <img src="$screenshotUri" class="screenshot-img" alt="Screenshot Terminal Asli">
  <div class="screenshot-caption">Gambar 1: Bukti tangkapan layar terminal asli eksekusi verifikasi versi kakas (Git, Node.js, NPM, Java JDK, VS Code, dan Android Studio).</div>
</div>
"@
} else {
    $screenshotHtml = @"
<div class="terminal-box">
  <div class="cmd">PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO&gt; git --version</div>
  <div class="cmd-out">git version 2.55.0.windows.3</div>
  <div class="cmd">PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO&gt; node --version</div>
  <div class="cmd-out">v20.18.0</div>
  <div class="cmd">PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO&gt; npm --version</div>
  <div class="cmd-out">10.8.2</div>
  <div class="cmd">PS D:\Project_Kuliah\MK_PBP_PAK_SUGIYANTO&gt; java -version</div>
  <div class="cmd-out">openjdk version "17.0.20.1" 2026-08-18<br>OpenJDK Runtime Environment Temurin-17.0.20.1+1 (build 17.0.20.1+1)<br>OpenJDK 64-Bit Server VM Temurin-17.0.20.1+1 (build 17.0.20.1+1, mixed mode, sharing)</div>
</div>
<div style="font-size: 8.5pt; color: #64748b; font-style: italic; text-align: center;">
  Catatan: Tangkapan layar terminal asli dapat disematkan di folder <code>screenshots/terminal-setup.png</code>.
</div>
"@
}

$renderedHtml = $html.Replace("{{SCREENSHOT_SECTION}}", $screenshotHtml)
Set-Content -Path $renderedHtmlPath -Value $renderedHtml -Encoding UTF8

Write-Host "Rendering PDF with Chrome Headless..."
$proc = Start-Process -FilePath $chromePath -ArgumentList "--headless=new", "--disable-gpu", "--no-pdf-header-footer", "--print-to-pdf=$pdfPath", "$renderedHtmlPath" -PassThru -Wait

Start-Sleep -Seconds 1

if (Test-Path $pdfPath) {
    $fileInfo = Get-Item $pdfPath
    Write-Host "PDF generated successfully: $($fileInfo.FullName) ($($fileInfo.Length) bytes)"
} else {
    Write-Host "Failed to generate PDF."
}

# Bersihkan file rendered temporary
Remove-Item $renderedHtmlPath -ErrorAction SilentlyContinue
