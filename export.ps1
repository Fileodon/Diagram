# npm install -g @mermaid-js/mermaid-cli
New-item -ItemType Directory -Force exported

Get-ChildItem -Filter *.mmd | ForEach-Object {
    if (-not (Test-Path "exported/$($_.BaseName).svg")) {
            mmdc -i $_.FullName `
         -o "exported/$($_.BaseName).svg" `
         --theme dark `
         -b transparent
    }
    if (-not (Test-Path "exported/$($_.BaseName).png")) {
            mmdc -i $_.FullName `
         -o "exported/$($_.BaseName).png" `
         --theme dark `
         -b transparent
    }


}