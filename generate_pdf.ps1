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
  <div class="screenshot-caption">Gambar 1: Bukti tangkapan layar terminal asli eksekusi verifikasi versi kakas (Git, Node.js, NPM, Java JDK).</div>
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
  <div class="cmd-err">java : The term 'java' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again.</div>
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
