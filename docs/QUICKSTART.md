# Quick Start Guide

Welcome! This guide will get you up and running quickly.

## 🚀 Getting Started (5 minutes)

### 1. Install Dependencies

```bash
./setup.sh
```

Or manually:

```bash
npm install
```

### 2. Start Development Server

```bash
npm run dev
```

Open http://localhost:5173 in your browser.

### 3. Make It Yours

Edit these three key files:

#### `src/class/class_data.yaml` - Course Configuration
```yaml
start_date: 2025/02/17        # Your semester start
instructors:
  - name: "Your Name"          # Your info
    email: "you@unibe.ch"
```

#### `src/lib/constants.js` - External Links
```javascript
const gradescope = 'https://www.gradescope.com/courses/YOUR_ID';
const canvas = 'https://canvas.unibe.ch/courses/YOUR_ID';
```

#### `src/routes/+page.svelte.md` - Homepage
Update the course description and overview.

## 📁 What's Included

- ✅ Responsive course website with calendar
- ✅ Lecture and assignment pages
- ✅ Instructor profiles with office hours
- ✅ Material links (slides, notes, recordings)
- ✅ Markdown support for easy content editing
- ✅ Mobile-friendly design
- ✅ Based on Stanford CS45 design

## 📝 Key Files to Edit

| File | Purpose |
|------|---------|
| `src/class/class_data.yaml` | All course data (lectures, assignments, instructors) |
| `src/lib/constants.js` | External platform URLs |
| `src/routes/+page.svelte.md` | Homepage content |
| `src/routes/course_info/+page.svelte.md` | Course policies and info |
| `src/routes/assignments/assign1/+page.svelte.md` | Assignment 1 (template included) |
| `src/static/` | Upload your slides, notes, images here |

## 🎨 Customization

### Change Colors

Edit `src/style.css` and replace `#2689ff` (blue) with your color.

### Add Your Photo

1. Save photo as `src/static/images/your-name.jpg`
2. Update in `class_data.yaml`:
   ```yaml
   image: "/images/your-name.jpg"
   ```

### Add Lectures

In `class_data.yaml`:
```yaml
lectures:
  - topic: "Your Lecture Topic"
    materials:
      slides: "/slides/lecture1.pdf"
    assignments: []
```

### Add Assignments

1. Add to `class_data.yaml`:
   ```yaml
   assignments:
     - name: "Assignment 1: Title"
       due: "2025/02/26"
       points: 10
   ```

2. Create page: `src/routes/assignments/assign1/+page.svelte.md`

## 🏗️ Build for Production

```bash
npm run build
```

The `build/` folder contains your complete static site.

## 📤 Deploy

### GitHub Pages

1. Push to GitHub
2. Settings → Pages → Source: GitHub Actions
3. Add `.github/workflows/deploy.yml` (see CUSTOMIZATION.md)

### Other Hosting

Upload the `build/` folder to:
- Netlify
- Vercel
- Your university's web hosting

## 🆘 Need Help?

1. Check `CUSTOMIZATION.md` for detailed instructions
2. Review `README.md` for full documentation
3. Visit [SvelteKit docs](https://kit.svelte.dev/docs)

## ✅ Pre-Launch Checklist

- [ ] Updated instructor information
- [ ] Changed URLs in constants.js
- [ ] Added course schedule
- [ ] Tested on mobile
- [ ] Verified all links work
- [ ] Added your photos

## 🎓 You're Ready!

Your course website is set up with:
- 10 weeks of placeholder lectures
- 7 placeholder assignments
- Complete course structure
- Professional design

Just customize the content and you're ready to launch!

**Good luck with your course!**
