#!/bin/bash

echo "=========================================="
echo "Image Analysis Course Website Setup"
echo "=========================================="
echo ""

# Check if node is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed."
    echo "Please install Node.js 18+ from https://nodejs.org/"
    exit 1
fi

echo "✓ Node.js version: $(node --version)"
echo ""

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed."
    exit 1
fi

echo "✓ npm version: $(npm --version)"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
echo "   (Using --legacy-peer-deps for Svelte 4/5 compatibility)"
npm install --legacy-peer-deps

if [ $? -eq 0 ]; then
    echo "✓ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    echo ""
    echo "Try running manually:"
    echo "  npm install --legacy-peer-deps"
    exit 1
fi

echo ""
echo "=========================================="
echo "✅ Setup complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo ""
echo "1. Read START_HERE.md for quick start guide"
echo "2. Start the development server:"
echo ""
echo "   make dev"
echo "   (or: npm run dev)"
echo ""
echo "3. Visit http://localhost:5173 to see your site"
echo ""
echo "4. Edit src/class/class_data.yaml to customize course info"
echo ""
echo "For all commands:"
echo "   make help"
echo ""
echo "Documentation:"
echo "   See docs/ folder for guides"
echo ""
echo "Happy teaching! 🎓"
