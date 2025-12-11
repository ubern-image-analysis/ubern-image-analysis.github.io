# 🎓 Your Course Website is Ready!

## What You Have

I've created a complete, professional course website for your **Introduction to Image Analysis** course at the University of Bern. It's based on the Stanford CS45 design and is fully functional with placeholder content.

## 📋 Quick Overview

- **Framework:** SvelteKit (modern, fast, static site generator)
- **Style:** Stanford CS45 inspired (blue theme, clean design)
- **Content:** 10 weeks of lectures, 7 assignments, all placeholder
- **Pages:** Home, Lectures, Assignments, Course Info
- **Features:** Dynamic calendar, instructor cards, material links
- **Status:** Ready to customize and launch

## 🚀 What to Do Right Now

### 1️⃣ Install Dependencies (5 minutes)

Open Terminal and run:

```bash
cd /Users/amithkamath/repo/teach/ubern-image-analysis.github.io
./setup.sh
```

This will install everything you need.

### 2️⃣ Start the Development Server

```bash
npm run dev
```

Then open: http://localhost:5173

You'll see your course website running!

### 3️⃣ Make Essential Edits (15 minutes)

**File 1:** `src/class/class_data.yaml`
```yaml
start_date: 2025/02/17  # Change to your semester start

instructors:
  - name: "Your Name Here"          # ← Change this
    email: "your.email@unibe.ch"    # ← Change this
    # ... rest stays same for now
```

**File 2:** `src/lib/constants.js`
```javascript
const gradescope = 'https://www.gradescope.com/courses/YOUR_ID';  // ← Add your URLs
const canvas = 'https://canvas.unibe.ch/courses/YOUR_ID';
const forum = 'https://your-forum.com';
```

**File 3:** `src/routes/+page.svelte.md`
- Update the course description
- Modify prerequisites
- Adjust policies

Save and watch the site update automatically!

## 📚 Documentation Guide

I've created 5 documentation files for you:

1. **START_HERE.md** (this file) - What to do first
2. **INSTALLATION.md** - Detailed setup and troubleshooting
3. **QUICKSTART.md** - 5-minute essential edits
4. **CUSTOMIZATION.md** - Complete customization guide
5. **README.md** - Full project documentation

**Suggested order:**
1. Read START_HERE.md (you're here!)
2. Follow INSTALLATION.md if you have any issues
3. Use QUICKSTART.md for fast edits
4. Refer to CUSTOMIZATION.md when you want to go deeper
5. Keep README.md as reference

## 🎯 Your Roadmap

### Week 1: Get It Running
- [ ] Run `./setup.sh`
- [ ] Start dev server: `npm run dev`
- [ ] See it in browser
- [ ] Make the 3 essential edits above

### Week 2: Customize Content
- [ ] Update course description
- [ ] Add your photo to `src/static/images/`
- [ ] Update `class_data.yaml` with your info
- [ ] Modify lecture topics for your syllabus

### Week 3: Add Materials
- [ ] Upload first week's slides
- [ ] Create first assignment page
- [ ] Test all links
- [ ] Get feedback from a colleague

### Week 4: Polish & Launch
- [ ] Test on mobile
- [ ] Review all policies
- [ ] Build for production: `npm run build`
- [ ] Deploy to hosting
- [ ] Share with students!

## 📁 Important Files & Folders

```
Key files to edit:
├── src/class/class_data.yaml          ⭐ All course data
├── src/lib/constants.js               ⭐ External URLs
├── src/routes/+page.svelte.md         ⭐ Homepage
├── src/routes/course_info/+page.svelte.md  Course policies
└── src/static/                        Upload your files here

Documentation:
├── START_HERE.md                      This file
├── INSTALLATION.md                    Setup guide
├── QUICKSTART.md                      Fast start
├── CUSTOMIZATION.md                   Deep dive
├── README.md                          Full docs
└── PROJECT_SUMMARY.md                 What was created
```

## 💡 Pro Tips

1. **Keep Dev Server Running:** It auto-refreshes when you save files
2. **Edit in VS Code:** Best experience for Svelte/Markdown
3. **Start Simple:** Use placeholders, update later
4. **Test Early:** Share with students in week 1 for feedback
5. **Backup Often:** Git commit after each major change

## 🎨 Customization Ideas

Easy wins:
- Change primary color from blue to your university colors
- Add your university logo
- Update footer with your contact info
- Add a "Resources" page

Advanced:
- Add video embedding for lectures
- Create interactive exercises
- Add student submission forms
- Integrate with university LMS

## 🐛 If Something Goes Wrong

### Error: Module not found
```bash
npm install
```

### Error: Port already in use
```bash
npm run dev -- --port 3000
```

### Blank page in browser
Check browser console (F12) for errors

### For everything else
Check `INSTALLATION.md` troubleshooting section

## ✅ Success Checklist

You're ready to go public when:
- [ ] Dev server runs without errors
- [ ] Your name appears instead of "Your Name Here"
- [ ] Course dates match your semester
- [ ] External links work (Gradescope, Canvas)
- [ ] At least 1 real lecture slide uploaded
- [ ] At least 1 assignment page created
- [ ] Tested on mobile phone
- [ ] Colleague has reviewed it
- [ ] No placeholder content on homepage

## 🚀 Deployment Options

### Option 1: GitHub Pages (Free, Easy)
1. Push to GitHub
2. Settings → Pages → Enable
3. Add deployment workflow (see CUSTOMIZATION.md)

### Option 2: University Hosting
Upload the `build/` folder after running:
```bash
npm run build
```

### Option 3: Netlify/Vercel (Free, Automatic)
1. Connect your GitHub repo
2. Deploy automatically on push

## 📞 Getting Help

**Technical Issues:**
- Check INSTALLATION.md troubleshooting
- Review error messages carefully
- SvelteKit docs: https://kit.svelte.dev/docs

**Content Questions:**
- See CUSTOMIZATION.md examples
- Check other course websites for inspiration
- Stanford CS45: https://cs45.stanford.edu

**Design Changes:**
- All styling in `src/style.css`
- Component styles in `*.svelte` files
- Colors: search for `#2689ff` to replace

## 🎊 You're All Set!

Everything is ready for you to customize. The hardest part (setup) is done!

**Next immediate steps:**
1. ✅ Run `./setup.sh`
2. ✅ Start server with `npm run dev`
3. ✅ Open http://localhost:5173
4. ✅ Edit the 3 essential files
5. ✅ See your changes live!

Then follow QUICKSTART.md for the next level of customization.

---

**Questions?** Check the documentation files listed above.

**Ready?** Let's get started! Run that setup script! 🚀

```bash
cd /Users/amithkamath/repo/teach/ubern-image-analysis.github.io
./setup.sh
```

**Good luck with your course! Your students will love this website! 🎓✨**
