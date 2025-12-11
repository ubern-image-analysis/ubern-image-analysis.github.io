# 📊 Project Structure Overview

## Complete File Structure

```
ubern-image-analysis.github.io/
│
├─── 📄 Documentation Files (Read These!)
│    ├── START_HERE.md          ⭐ READ THIS FIRST!
│    ├── INSTALLATION.md         Setup & troubleshooting
│    ├── QUICKSTART.md           5-minute quick start
│    ├── CUSTOMIZATION.md        Detailed customization
│    ├── README.md               Full documentation
│    └── PROJECT_SUMMARY.md      What was created
│
├─── 🔧 Configuration Files
│    ├── package.json            Dependencies & scripts
│    ├── svelte.config.js       SvelteKit configuration
│    ├── vite.config.ts         Build tool config
│    ├── tsconfig.json          TypeScript config
│    ├── mdsvex.config.js       Markdown processing
│    ├── .gitignore             Git ignore rules
│    └── setup.sh               Automated setup script ⭐
│
└─── 📁 src/ (Source Code)
     │
     ├── app.html                HTML template
     ├── style.css               Global styles ⭐
     │
     ├─── 📊 class/
     │    └── class_data.yaml    ⭐ MAIN CONFIG FILE - Edit this!
     │                           (Lectures, assignments, instructors)
     │
     ├─── 📚 lib/ (Reusable Components)
     │    │
     │    ├── classData.ts       Data processing utilities
     │    ├── constants.js       ⭐ External URLs - Edit this!
     │    ├── markdown.js        Markdown rendering
     │    │
     │    ├── Calendar.svelte    Main calendar component
     │    ├── Instructor.svelte  Instructor profile cards
     │    ├── Callout.svelte     Info/warning boxes
     │    ├── BoxLink.svelte     Colored material links
     │    ├── MaterialsList.svelte  Material link lists
     │    ├── UnitDetails.svelte Lecture/assignment cards
     │    │
     │    ├─── Calendar/
     │    │    ├── Week.svelte
     │    │    └── Day/
     │    │         ├── Day.svelte
     │    │         ├── Topic.svelte
     │    │         ├── Materials.svelte
     │    │         └── Assignments.svelte
     │    │
     │    ├─── Navbar/
     │    │    ├── NavbarBase.svelte
     │    │    ├── NavList.svelte
     │    │    └── NavListItem.svelte
     │    │
     │    └─── layouts/
     │         ├── DefaultMd.svelte     Default page layout
     │         └── Assignment.svelte    Assignment page layout
     │
     ├─── 🌐 routes/ (Pages)
     │    │
     │    ├── +layout.svelte     Main layout wrapper
     │    ├── +layout.ts         Layout configuration
     │    ├── Navbar.svelte      Top navigation bar
     │    ├── +page.svelte.md    ⭐ HOMEPAGE - Edit this!
     │    │
     │    ├─── lectures/
     │    │    └── +page.svelte  Lectures list page
     │    │
     │    ├─── assignments/
     │    │    ├── +page.svelte  Assignments list page
     │    │    └── assign1/
     │    │         └── +page.svelte.md  Sample assignment
     │    │
     │    └─── course_info/
     │         └── +page.svelte.md  ⭐ Course info - Edit this!
     │
     └─── 📦 static/ (Static Files)
          ├── favicon-16x16.png
          ├── favicon-32x32.png
          └── images/
               ├── placeholder-instructor.jpg
               └── placeholder-ta.jpg
               └── (Add your photos here) ⭐
```

## 🎯 Files You MUST Edit

### Priority 1: Essential (15 minutes)

1. **`src/class/class_data.yaml`**
   - Course dates
   - Instructor info
   - Lecture topics
   - Assignment details

2. **`src/lib/constants.js`**
   - Gradescope URL
   - Canvas URL
   - Forum URL

3. **`src/routes/+page.svelte.md`**
   - Course description
   - Prerequisites
   - Overview

### Priority 2: Important (1 hour)

4. **`src/routes/course_info/+page.svelte.md`**
   - Course policies
   - Grading
   - Meeting times

5. **`src/static/images/`**
   - Add your photos
   - Replace placeholders

6. **`src/routes/assignments/assign1/+page.svelte.md`**
   - Create real assignment
   - Or use as template

### Priority 3: Optional Customization

7. **`src/style.css`**
   - Change colors
   - Adjust fonts
   - Modify spacing

## 📝 Files You Can IGNORE (Auto-generated)

- `node_modules/` - Installed dependencies
- `.svelte-kit/` - Build cache
- `build/` - Production output
- `package-lock.json` - Dependency lock

## 🎨 Component Hierarchy

```
+layout.svelte (Main Layout)
├── Navbar
│   ├── NavbarBase
│   └── NavList
│       └── NavListItem
│
└── Page Content
    ├── Calendar
    │   ├── Week
    │   └── Day
    │       ├── Topic
    │       ├── Materials
    │       │   └── BoxLink
    │       └── Assignments
    │
    ├── Instructor
    │   └── Office Hours
    │
    ├── UnitDetails
    │   └── MaterialsList
    │       └── BoxLink
    │
    └── Callout
```

## 📊 Data Flow

```
class_data.yaml
      ↓
classData.ts (processes data)
      ↓
Components (Calendar, Lists, etc.)
      ↓
Rendered Pages
```

## 🔄 Development Workflow

```
1. Edit file
   ↓
2. Save
   ↓
3. Hot reload (auto)
   ↓
4. Check browser
   ↓
5. Repeat
```

## 🚀 Build Process

```
npm run dev
    ↓
Vite starts
    ↓
SvelteKit compiles
    ↓
MDsveX processes markdown
    ↓
YAML parsed
    ↓
Components rendered
    ↓
Server ready at localhost:5173
```

## 📦 Static Assets Location

Upload your files here:

```
src/static/
├── slides/
│   ├── lecture1.pdf
│   ├── lecture2.pdf
│   └── ...
│
├── notes/
│   └── lecture1.pdf
│
├── assignments/
│   ├── assign1/
│   │   ├── handout.pdf
│   │   └── starter.zip
│   └── ...
│
└── images/
    ├── your-photo.jpg
    └── ta-photo.jpg
```

Reference in YAML:
```yaml
materials:
  slides: "/slides/lecture1.pdf"
  notes: "/notes/lecture1.pdf"
```

## 🎯 Quick Reference

| Task | File to Edit |
|------|--------------|
| Change course name | `src/routes/+page.svelte.md` |
| Add lecture | `src/class/class_data.yaml` |
| Change colors | `src/style.css` |
| Add assignment | Create new `assignN/+page.svelte.md` |
| Update instructor | `src/class/class_data.yaml` |
| Change navbar | `src/routes/Navbar.svelte` |
| Add new page | Create new route folder |

## 💡 Tips

**Finding Files:**
- Use Cmd+P (Mac) or Ctrl+P (Windows) in VS Code
- Files are organized by function
- Component files end in `.svelte`
- Page files end in `.svelte.md` or `.svelte`

**Making Changes:**
- Always keep `npm run dev` running
- Save files to see changes immediately
- Check browser console for errors
- Check terminal for build errors

**Common Locations:**
- Content: `src/routes/`
- Styles: `src/style.css`
- Config: `src/class/class_data.yaml`
- Images: `src/static/images/`

## ✅ Checklist for First Run

- [ ] Files are in `/Users/amithkamath/repo/teach/ubern-image-analysis.github.io/`
- [ ] Read `START_HERE.md`
- [ ] Run `./setup.sh`
- [ ] Run `npm run dev`
- [ ] Open http://localhost:5173
- [ ] See the website
- [ ] Edit `class_data.yaml`
- [ ] See changes in browser
- [ ] Edit `constants.js`
- [ ] Edit homepage
- [ ] All working!

## 🎊 You're Ready!

This structure gives you everything you need for a professional course website. All the complex setup is done - you just need to add your content!

**Next step:** Open `START_HERE.md` and follow the quick start guide!
