# 🎓 Introduction to Image Analysis - Getting Started

Welcome to the course website repository! This guide will get you up and running in minutes.

## ⚡ Super Quick Start (3 commands)

```bash
cd /Users/amithkamath/repo/teach/ubern-image-analysis.github.io
make install
make dev
```

Open http://localhost:5173 in your browser. Done! 🎉

## 📋 What This Is

A complete, production-ready website for the **Introduction to Image Analysis** course at University of Bern (Spring 2026), featuring:

- ✅ 14-week schedule with real course content
- ✅ 4 assignments (Assignment 0-3) configured
- ✅ Dynamic calendar
- ✅ Responsive design
- ✅ Ready to customize and deploy

## 🗂️ Project Structure

```
ubern-image-analysis.github.io/
├── Makefile              ⭐ Use this! Run `make help`
├── README.md             Full documentation
├── docs/                 📚 All documentation (moved here)
│   ├── START_HERE.md     Original getting started
│   ├── QUICKSTART.md     5-minute guide
│   ├── INSTALLATION.md   Detailed setup
│   └── ...               Other guides
├── src/
│   ├── class/
│   │   └── class_data.yaml   ⭐ Edit course info here
│   ├── routes/               Pages (homepage, lectures, etc.)
│   └── static/               Upload slides, images here
└── package.json          Dependencies
```

## 🎯 Quick Commands

| Command | What It Does |
|---------|-------------|
| `make help` | Show all commands |
| `make install` | Install dependencies (first time only) |
| `make dev` | Start development server |
| `make build` | Build for production |
| `make clean` | Clean everything |

## 📝 Course Content Already Configured

The site is pre-populated with actual course content:

**Lectures (14 weeks):**
1. Course Overview & Python
2. Digital Image Formation
3. Sampling & Quantization
4. Point Operations & Filtering
5. Edge Detection & Morphology
6. Image Segmentation
7. Mid-term Exam
8. Feature Extraction
9. Image Registration
10. Demo Presentations
11. Deep Learning Intro
12. Transfer Learning & Interpretability
13. Multimodal Learning
14. Final Exam

**Assignments (4 total):**
- Assignment 0: Python Programming (5 pts)
- Assignment 1: Convolution & Interpolation (8 pts)
- Assignment 2: DL vs Classical Methods (10 pts)
- Assignment 3: Demo & Peer Review (7 pts)

## 🔧 Key Files to Customize

### 1. Course Configuration
**File:** `src/class/class_data.yaml`

Update instructor info, office hours, and links:
```yaml
instructors:
  - name: "Your Name Here"
    email: "your.email@unibe.ch"
```

### 2. External Links
**File:** `src/lib/constants.js`

Add your course platform URLs:
```javascript
const gradescope = 'https://www.gradescope.com/courses/YOUR_ID';
const github = 'https://classroom.github.com/YOUR_CLASS';
```

### 3. Homepage
**File:** `src/routes/+page.svelte.md`

Edit course description and overview.

## 📚 Documentation

All documentation moved to `docs/` folder:

- **[docs/INDEX.md](docs/INDEX.md)** - Documentation index
- **[docs/QUICKSTART.md](docs/QUICKSTART.md)** - 5-minute setup
- **[docs/CUSTOMIZATION.md](docs/CUSTOMIZATION.md)** - Full customization guide
- **[docs/INSTALLATION.md](docs/INSTALLATION.md)** - Troubleshooting

## 🐛 Troubleshooting

### Dependencies Won't Install?

The setup uses `--legacy-peer-deps` to handle Svelte 4/5 compatibility:

```bash
make install
# or
npm install --legacy-peer-deps
```

### Port Already in Use?

```bash
npm run dev -- --port 3000
```

### Need Fresh Start?

```bash
make fresh     # Cleans and reinstalls everything
```

## 🚀 Next Steps

1. ✅ Run `make install` and `make dev`
2. ✅ View site at http://localhost:5173
3. Edit `src/class/class_data.yaml` with your info
4. Upload slides to `src/static/slides/`
5. Deploy! (See [docs/CUSTOMIZATION.md](docs/CUSTOMIZATION.md#deployment))

## 🆘 Need Help?

1. Run `make help` for command reference
2. Check `docs/INSTALLATION.md` for troubleshooting
3. Review `docs/INDEX.md` for full documentation index

## ✨ What's Different from Original Setup?

- ✅ Real course content (14 lectures, 4 assignments)
- ✅ Makefile for easier commands
- ✅ Documentation moved to `docs/`
- ✅ Fixed dependency conflicts
- ✅ Simplified workflow

**You're ready to go! Run `make dev` and start customizing! 🎓**
