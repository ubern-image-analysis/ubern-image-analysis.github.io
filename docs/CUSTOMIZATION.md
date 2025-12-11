# Setup and Customization Guide

This guide will help you customize the Image Analysis course website for your specific needs.

## Initial Setup

### 1. Install Dependencies

```bash
cd /Users/amithkamath/repo/teach/ubern-image-analysis.github.io
npm install
```

### 2. Test the Development Server

```bash
npm run dev
```

Visit `http://localhost:5173` to see your site.

## Customization Steps

### Step 1: Update Course Information

Edit `src/class/class_data.yaml`:

#### A. Course Schedule
```yaml
start_date: 2025/02/17  # Change to your semester start date
class_days:
  - Monday              # Change to your lecture days
  - Wednesday
assignment_due_time: "23:59"  # Change default due time
```

#### B. Instructors
Replace placeholder information:
```yaml
instructors:
  - name: "Dr. Your Name"
    role: "Instructor"
    email: "your.email@unibe.ch"
    image: "/images/your-photo.jpg"  # Add your photo to src/static/images/
    officeHours:
      - when: "Tuesdays 2-4 PM"
        where: "Your Office Location"
        url: ""  # Optional: Zoom link or booking system
```

#### C. Lectures
Update each lecture entry:
```yaml
lectures:
  - topic: "Your Lecture Topic"
    materials:
      slides: "/slides/lecture1.pdf"
      notes: "/notes/lecture1.pdf"
      recording: "https://video.unibe.ch/your-video"
    assignments: [1]  # Assignment numbers due after this lecture
```

#### D. Assignments
Configure your assignments:
```yaml
assignments:
  - name: "Assignment 1: Your Title"
    due: "2025/02/26"
    points: 10
    materials:
      handout: "/assignments/assign1/handout.pdf"
      gradescope: "https://www.gradescope.com/courses/YOUR_ID"
      starter: "/assignments/assign1/starter.zip"
```

### Step 2: Update External Links

Edit `src/lib/constants.js`:

```javascript
const gradescope = 'https://www.gradescope.com/courses/YOUR_COURSE_ID';
const canvas = 'https://canvas.unibe.ch/courses/YOUR_COURSE_ID';
const forum = 'https://moodle.unibe.ch/YOUR_COURSE';  // or whatever platform

export { base, gradescope, canvas, forum };
```

### Step 3: Add Your Photos

1. Add instructor photos to `src/static/images/`
2. Reference them in `class_data.yaml`:
   ```yaml
   image: "/images/dr-smith.jpg"
   ```

### Step 4: Customize Course Pages

#### Homepage (`src/routes/+page.svelte.md`)
- Update course description
- Modify prerequisites
- Change grading policy
- Update contact information

#### Course Info (`src/routes/course_info/+page.svelte.md`)
- Add specific meeting times and locations
- Update textbook recommendations
- Modify policies as needed
- Add university-specific information

### Step 5: Create Assignment Pages

For each assignment, create a file:
`src/routes/assignments/assignN/+page.svelte.md`

Template:
```markdown
---
layout: assignment
assign: 1  # Must match index in class_data.yaml
---

<script>
  import Callout from '$lib/Callout.svelte';
  import { class_data } from '$lib/classData';
  let assign = class_data.assignments[1];
</script>

## Overview
Your assignment description...

## Part 1: Title (X points)
Instructions...

<Callout warning>
Important information
</Callout>

## Submission
Submit to [Gradescope]({assign.materials.gradescope})
```

### Step 6: Add Course Materials

Upload files to `src/static/`:

```
src/static/
├── slides/
│   ├── lecture1.pdf
│   ├── lecture2.pdf
│   └── ...
├── notes/
│   └── lecture1.pdf
├── assignments/
│   ├── assign1/
│   │   ├── handout.pdf
│   │   └── starter.zip
│   └── ...
└── images/
    ├── instructor1.jpg
    └── ta1.jpg
```

### Step 7: Customize Colors and Styling

Edit `src/style.css` to change:

#### Primary Color (blue)
Find and replace `#2689ff` with your preferred color.

#### Fonts
Change the font import at the top of `src/style.css`:
```css
@import url('https://fonts.googleapis.com/css2?family=Your+Font&display=swap');
```

#### Material Colors
Edit `src/lib/classData.ts`, function `getBoxColor()`:
```typescript
export function getBoxColor(type) {
  switch (type) {
    case 'slides':
      return '#2689ff';  // Your color
    case 'recording':
      return '#8c1515';  // Your color
    // Add more types as needed
  }
}
```

## Building for Production

### Local Build

```bash
npm run build
npm run preview  # Test the production build
```

### Deploy to GitHub Pages

1. Create a GitHub repository
2. Push your code
3. Enable GitHub Pages in repository settings
4. Set source to "GitHub Actions" (recommended) or deploy the `build/` folder

#### Option A: GitHub Actions (Recommended)

Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: ['main']
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: 18
      - run: npm ci
      - run: npm run build
      - uses: actions/upload-pages-artifact@v1
        with:
          path: 'build'
  
  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - uses: actions/deploy-pages@v1
        id: deployment
```

#### Option B: Manual Deploy

```bash
npm run build
# Upload the 'build/' folder to your hosting service
```

## Advanced Customization

### Adding New Pages

Create a new route:
```
src/routes/yourpage/+page.svelte.md
```

Add to navbar in `src/routes/Navbar.svelte`:
```svelte
<NavListItem href="{base}/yourpage">Your Page</NavListItem>
```

### Custom Components

Create in `src/lib/YourComponent.svelte`:
```svelte
<script>
  export let prop = 'default';
</script>

<div>
  {prop}
</div>

<style>
  /* Your styles */
</style>
```

Use in markdown:
```markdown
<script>
  import YourComponent from '$lib/YourComponent.svelte';
</script>

<YourComponent prop="value" />
```

### Material Types

Add custom material types in `src/lib/classData.ts`:

```typescript
export function getBoxColor(type) {
  switch (type) {
    case 'slides': return '#2689ff';
    case 'recording': return '#8c1515';
    case 'notes': return '#007c41';
    case 'code': return '#53565a';
    case 'quiz': return '#9d27b0';  // Add your custom type
    default: return '#767676';
  }
}
```

## Troubleshooting

### Calendar Not Displaying

Check:
- `start_date` format is `YYYY/MM/DD`
- `class_days` contains valid weekday names
- Number of lectures matches weeks × days

### Images Not Loading

- Images must be in `src/static/`
- Reference with absolute paths starting with `/`
- Check file extensions match

### Build Errors

Common fixes:
```bash
rm -rf node_modules package-lock.json
npm install
npm run build
```

### TypeScript Errors

These are usually warnings and won't prevent the build. To fix:
- Ensure all imports are correct
- Check YAML syntax in `class_data.yaml`

## Tips

1. **Test Frequently**: Run `npm run dev` while editing
2. **Use Version Control**: Commit changes regularly
3. **Backup Materials**: Keep original files separate
4. **Mobile Testing**: Check site on different devices
5. **Student Testing**: Have a colleague or student test navigation

## Need Help?

- Check the main README.md
- Review SvelteKit docs: https://kit.svelte.dev/docs
- Check MDsveX docs: https://mdsvex.pngwn.io/

## Checklist

Before going live:
- [ ] Updated all instructor information
- [ ] Changed placeholder URLs in constants.js
- [ ] Added course schedule to class_data.yaml
- [ ] Created at least one assignment page
- [ ] Uploaded instructor photos
- [ ] Tested on mobile device
- [ ] Verified all links work
- [ ] Checked calendar displays correctly
- [ ] Updated course policies
- [ ] Added contact information

Good luck with your course!
