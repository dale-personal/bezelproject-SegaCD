$files = Get-ChildItem -File -Filter *.cfg -Path "retroarch\config\Genesis Plus GX\"

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    $new_name = $files[$i].BaseName + ".chd" + $files[$i].Extension
    Rename-Item -Path $files[$i].FullName -NewName $new_name
}
