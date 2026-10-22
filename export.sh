# npm install -g @mermaid-js/mermaid-cli
mkdir -f exported

for f in *.mmd; do
    [ -f "$f" ] || continue
    if [ ! -f "exported/${f%.mmd}.svg" ]; then
    mmdc -i "$f" -o "exported/${f%.mmd}.svg" --theme dark -b transparent
    fi
    if [ ! -f "exported/${f%.mmd}.png" ]; then
    mmdc -i "$f" -o "exported/${f%.mmd}.png" --theme dark -b "#262626"
    fi
done