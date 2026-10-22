# npm install -g @mermaid-js/mermaid-cli
mkdir -f exported

for f in *.mmd; do
    [ -f "$f" ] || continue
    if [ -f "exported/${f%.mmd}.svg" ]; then
        echo "Skipping $f because exported/${f%.mmd}.svg already exists."
        continue
    fi
    mmdc -i "$f" -o "exported/${f%.mmd}.svg" --theme dark -b transparent
done