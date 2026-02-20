bookbuilder build \
  --root /Users/kangs/github/tamil-prompt-standard \
  --order /Users/kangs/github/tamil-prompt-standard/configs/tamil-prompt-engineering-book-2-chaps.json \
  --force \
  --temp /Users/kangs/Downloads/book \
  --format=pdf


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
