#!/bin/bash

mkdir -p build/epub

pandoc \
    --verbose \
    --filter pandoc-codeblock-include \
    "--from=markdown+rebase_relative_paths" \
    --toc-depth=5 \
    --filter=mermaid-filter \
    --filter pandoc-crossref \
    --toc -N \
    -o build/epub/qt6book.epub \
    metadata_qt6book.yml \
    qt6book/docs/*/*.md
    # -f markdown+smart -t markdown-smart \
