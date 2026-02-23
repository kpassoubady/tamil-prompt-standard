# Re-render all Mermaid diagrams to PNG before building
# Requires: npm install -g @mermaid-js/mermaid-cli
for f in /Users/kangs/github/tamil-prompt-standard/book/images/diagrams/*.mmd; do
  mmdc -i "$f" -o "${f%.mmd}.png" -w 1200 -s 2 -b white --theme neutral
done


bookbuilder build \
  --root /Users/kangs/github/tamil-prompt-standard \
  --order /Users/kangs/github/tamil-prompt-standard/configs/tamil-prompt-engineering-book-quick-test.json \
  --force \
  --temp /Users/kangs/Downloads/book \
  --output /Users/kangs/github/bookbuilder/temp/tamil-prompt-engineering-book-quick-test.pdf \
  --format=pdf


bookbuilder build \
  --root /Users/kangs/github/tamil-prompt-standard \
  --order /Users/kangs/github/tamil-prompt-standard/configs/tamil-prompt-engineering-book-quick-test.json \
  --force \
  --temp /Users/kangs/Downloads/book \
  --output /Users/kangs/github/bookbuilder/temp/tamil-prompt-engineering-book-quick-test.epub \
  --format=epub
