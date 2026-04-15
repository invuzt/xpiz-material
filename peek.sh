#!/bin/bash

# Folder yang ingin diperiksa (mencakup semua subfolder ui dan src)
TARGET_DIRS=("src" "ui" ".github")

# File spesifik di root
ROOT_FILES=("Cargo.toml" "build.rs" "README.md")

echo "--- START OF PROJECT DUMP ---"

# 1. Cetak file-file di root
for f in "${ROOT_FILES[@]}"; do
    if [ -f "$f" ]; then
        echo "========================================"
        echo " FILE: $f"
        echo "========================================"
        cat "$f"
        echo -e "\n"
    fi
done

# 2. Cari semua file kode di dalam folder target secara mendalam
# Menggunakan find untuk mencari file .rs, .slint, .toml, dan .yml
find "${TARGET_DIRS[@]}" -type f \( -name "*.rs" -o -name "*.slint" -o -name "*.toml" -o -name "*.yml" \) 2>/dev/null | while read -r file; do
    echo "========================================"
    echo " FILE: $file"
    echo "========================================"
    cat "$file"
    echo -e "\n"
done

echo "--- END OF PROJECT DUMP ---"
