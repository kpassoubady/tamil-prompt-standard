# Re-render all Mermaid diagrams to PNG before building
# Requires: npm install -g @mermaid-js/mermaid-cli
for f in /Users/kangs/github/tamil-prompt-standard/book/images/diagrams/*.mmd; do
  mmdc -i "$f" -o "${f%.mmd}.png" -w 800 -b white --theme neutral
done

# show case book generation commands

bookbuilder build \
  --root /Users/kangs/github/tamil-prompt-standard \
  --order /Users/kangs/github/tamil-prompt-standard/configs/tamil-prompt-engineering-book-show-case.json \
  --force \
  --temp /Users/kangs/Downloads/book \
  --output /Users/kangs/github/bookbuilder/temp/tamil-prompt-engineering-book-show-case.pdf \
  --format=pdf

bookbuilder build \
  --root /Users/kangs/github/tamil-prompt-standard \
  --order /Users/kangs/github/tamil-prompt-standard/configs/tamil-prompt-engineering-book-show-case.json \
  --force \
  --temp /Users/kangs/Downloads/book \
  --output /Users/kangs/github/bookbuilder/temp/tamil-prompt-engineering-book-show-case.epub \
  --format=epub

