# npm install -g @mermaid-js/mermaid-cli
New-Item -ItemType Directory -Force exported

Get-ChildItem -Filter *.mmd | ForEach-Object {
    $svg = "exported/$($_.BaseName).svg"
    $png = "exported/$($_.BaseName).png"

    if (-not (Test-Path $svg)) {
        mmdc -i $_.FullName `
            -o $svg `
            --theme default `
            -b transparent `
            --iconPacks "@iconify-json/logos" "@iconify-json/fa" "@iconify-json/simple-icons"
    }

    if (-not (Test-Path $png)) {
        mmdc -i $_.FullName `
            -o $png `
            --theme default `
            --iconPacks "@iconify-json/logos" "@iconify-json/fa" "@iconify-json/simple-icons"
    }
}