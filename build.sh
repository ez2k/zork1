#!/bin/bash
# Build script for Zork I Korean localization

set -e

echo "=== Zork I Korean Build Script ==="
echo ""

# Check if ZILF is installed
if ! command -v zilf &> /dev/null; then
    echo "❌ ZILF is not installed"
    echo ""
    echo "Installation options:"
    echo "1. Download from: https://github.com/taradinoc/zilf/releases (recommended)"
    echo "   wget https://github.com/taradinoc/zilf/releases/download/0.11.1/zilf-0.11.1-bin.zip"
    echo "2. Use Docker: docker build -t zork-builder . && docker run -v \$(pwd):/zork zork-builder"
    echo ""
    exit 1
fi

echo "✅ ZILF found: $(which zilf)"
echo ""

# Compile
echo "📦 Compiling zork1.zil..."
zilf zork1.zil -o zork1_korean.zap

if [ -f "zork1_korean.zap" ]; then
    echo "✅ Compilation successful: zork1_korean.zap"
    echo ""

    # Assemble
    echo "🔧 Assembling with ZAPF..."
    zapf zork1_korean.zap

    if [ -f "zork1_korean.z3" ]; then
        echo "✅ Build successful: zork1_korean.z3"
        echo ""
        echo "To play the game:"
        echo "  frotz zork1_korean.z3"
    else
        echo "❌ Assembly failed"
        exit 1
    fi
else
    echo "❌ Compilation failed"
    exit 1
fi
