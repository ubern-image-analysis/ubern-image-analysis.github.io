# Makefile for Image Analysis Course Website
# University of Bern

.PHONY: help install dev build preview clean deploy docs check

# Default target
help:
	@echo "╔════════════════════════════════════════════════════════════╗"
	@echo "║  Image Analysis Course Website - Make Commands            ║"
	@echo "╚════════════════════════════════════════════════════════════╝"
	@echo ""
	@echo "Setup & Installation:"
	@echo "  make install      Install all dependencies"
	@echo "  make setup        Run the setup script (equivalent to ./setup.sh)"
	@echo ""
	@echo "Development:"
	@echo "  make dev          Start development server (http://localhost:5173)"
	@echo "  make check        Run type checking"
	@echo ""
	@echo "Building:"
	@echo "  make build        Build for production"
	@echo "  make preview      Preview production build locally"
	@echo ""
	@echo "Maintenance:"
	@echo "  make clean        Remove build artifacts and dependencies"
	@echo "  make clean-build  Remove only build artifacts"
	@echo "  make fresh        Clean everything and reinstall"
	@echo ""
	@echo "Documentation:"
	@echo "  make docs         Show documentation guide"
	@echo "  make tree         Display project structure"
	@echo ""
	@echo "Quick Start:"
	@echo "  1. make install   (first time only)"
	@echo "  2. make dev       (start working)"
	@echo ""

# Installation targets
install:
	@echo "📦 Installing dependencies..."
	npm install --legacy-peer-deps
	@echo "✅ Installation complete!"
	@echo ""
	@echo "Next step: run 'make dev' to start development server"

setup:
	@./setup.sh

# Development targets
dev:
	@echo "🚀 Starting development server..."
	@echo "📍 Open http://localhost:5173 in your browser"
	@echo "🔥 Hot reload is enabled - edit and save to see changes"
	@echo ""
	npm run dev

check:
	@echo "🔍 Running type checks..."
	npm run check

# Build targets
build:
	@echo "🏗️  Building for production..."
	npm run build
	@echo "✅ Build complete! Output is in build/ folder"
	@echo ""
	@echo "Next: make preview (to test) or deploy the build/ folder"

preview:
	@echo "👀 Previewing production build..."
	@echo "📍 Open http://localhost:4173 in your browser"
	npm run preview

# Clean targets
clean:
	@echo "🧹 Cleaning all build artifacts and dependencies..."
	rm -rf node_modules
	rm -rf .svelte-kit
	rm -rf build
	rm -f package-lock.json
	@echo "✅ Cleaned!"

clean-build:
	@echo "🧹 Cleaning build artifacts..."
	rm -rf .svelte-kit
	rm -rf build
	@echo "✅ Build artifacts removed!"

fresh: clean install
	@echo "✨ Fresh installation complete!"

# Documentation
docs:
	@echo "📚 Documentation Guide:"
	@echo ""
	@echo "Start Here:"
	@echo "  docs/START_HERE.md          - Quick start guide"
	@echo ""
	@echo "Essential Reading:"
	@echo "  docs/QUICKSTART.md          - 5-minute setup"
	@echo "  docs/INSTALLATION.md        - Detailed installation"
	@echo "  docs/CUSTOMIZATION.md       - How to customize"
	@echo ""
	@echo "Reference:"
	@echo "  docs/INDEX.md               - Documentation index"
	@echo "  docs/FILE_STRUCTURE.md      - Project structure"
	@echo "  README.md                   - Full documentation"
	@echo ""

tree:
	@echo "📁 Project Structure:"
	@echo ""
	@find src -type f \( -name "*.svelte" -o -name "*.md" -o -name "*.yaml" -o -name "*.ts" -o -name "*.js" -o -name "*.css" \) | head -30
	@echo ""
	@echo "For complete structure, see docs/FILE_STRUCTURE.md"

# Deployment (add your deployment commands here)
deploy:
	@echo "🚀 Deployment commands:"
	@echo ""
	@echo "For GitHub Pages:"
	@echo "  1. make build"
	@echo "  2. Deploy the build/ folder to gh-pages branch"
	@echo ""
	@echo "For other hosting:"
	@echo "  1. make build"
	@echo "  2. Upload build/ folder to your hosting service"
	@echo ""
	@echo "See docs/CUSTOMIZATION.md for detailed deployment instructions"
