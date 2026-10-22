# npm install -g @mermaid-js/mermaid-cli
New-item -ItemType Directory -Force exported

Get-ChildItem -Filter *.mmd | ForEach-Object {
    if (Test-Path "exported/$($_.BaseName).svg") {
        Write-Host "Skipping $($_.FullName) because exported/$($_.BaseName).svg already exists."
        return # Lambda, not continue...
    }

mmdc -i $_.FullName `
         -o "exported/$($_.BaseName).svg" `
         --theme dark `
         -b transparent
}