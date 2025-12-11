# Introduction to Image Analysis - Course Website

This is the course website for **Introduction to Image Analysis** at the University of Bern, a graduate course for Masters students in Biomedical Engineering (Spring 2026).

## 🚀 Quick Start

```bash
# Install dependencies
make install

# Start development server
make dev
```

Visit http://localhost:5173 to see your site.

For detailed instructions, see [docs/START_HERE.md](docs/START_HERE.md)

## Overview

This website is built using [SvelteKit](https://kit.svelte.dev/) and is inspired by the [Stanford CS45](https://github.com/stanford-cs45/stanford-cs45.github.io) course website design. It features:

- Responsive, modern design
- Dynamic calendar generated from YAML configuration
- Lecture and assignment pages
- Instructor information with office hours
- Material links (slides, notes, recordings, etc.)
- Easy customization through configuration files

## Make Commands

This project uses a Makefile for simplified commands:

```bash
make help          # Show all available commands
make install       # Install dependencies
make dev           # Start development server
make build         # Build for production
make preview       # Preview production build
make clean         # Clean all build artifacts
make docs          # Show documentation guide
```

## Prerequisites

- Node.js 18+ and npm
- Basic knowledge of YAML for configuration

## Installation

See the [Installation Guide](docs/INSTALLATION.md) for detailed instructions.

**Quick install:**
```bash
make install
# or
npm install --legacy-peer-deps
```

## Customization

### 1. Update Course Data (`src/class/class_data.yaml`)

This is the main configuration file for your course. Edit it to customize:

- **Course dates and schedule**: Change `start_date` and `class_days`
- **Instructors**: Update names, emails, office hours, and profile images
- **Lectures**: Add/modify lecture topics, dates, and materials
- **Assignments**: Configure assignment names, due dates, and points

Example:

```yaml
start_date: 2025/02/17
class_days:
  - Monday
  - Wednesday

instructors:
  - name: "Your Name"
    email: "your.email@unibe.ch"
    role: "Instructor"
    image: "/images/your-photo.jpg"
    officeHours:
      - when: "Tuesdays 2-4 PM"
        where: "Office 123"
```

### 2. Update External Links (`src/lib/constants.js`)

Edit this file to set your actual course platform URLs:

```javascript
const gradescope = 'https://www.gradescope.com/courses/YOUR_COURSE_ID';
const canvas = 'https://canvas.unibe.ch/courses/YOUR_COURSE_ID';
const forum = 'https://forum.example.com/YOUR_COURSE';
```

### 3. Add Course Materials

Place your materials in the `src/static` folder:

```
src/static/
├── slides/
│   ├── lecture1.pdf
│   ├── lecture2.pdf
│   └── ...
├── notes/
├── assignments/
├── images/
│   ├── instructor-photo.jpg
│   └── ...
└── ...
```

Reference these in your YAML configuration:

```yaml
lectures:
  - topic: "Introduction to Image Analysis"
    materials:
      slides: "/slides/lecture1.pdf"
      notes: "/notes/lecture1.pdf"
```

### 4. Customize Styling

The main styles are in `src/style.css`. You can customize:

- Colors (search for hex color codes like `#2689ff`)
- Fonts
- Layout spacing
- Component styling

### 5. Add Assignment Pages

Create assignment pages in `src/routes/assignments/assignN/+page.svelte.md`:

```markdown
---
layout: assignment
assign: 1
---

## Assignment 1: Your Title

Your assignment content here...
```

## Project Structure

```
ubern-image-analysis.github.io/
├── src/
│   ├── app.html              # HTML template
│   ├── style.css             # Global styles
│   ├── class/
│   │   └── class_data.yaml   # Course configuration
│   ├── lib/
│   │   ├── classData.ts      # Data utilities
│   │   ├── constants.js      # External links
│   │   ├── markdown.js       # Markdown processing
│   │   ├── Calendar.svelte   # Calendar component
│   │   ├── Instructor.svelte # Instructor cards
│   │   └── ...               # Other components
│   ├── routes/
│   │   ├── +page.svelte.md   # Homepage
│   │   ├── +layout.svelte    # Main layout
│   │   ├── lectures/         # Lectures page
│   │   ├── assignments/      # Assignments pages
│   │   └── course_info/      # Course info page
│   └── static/               # Static assets
├── package.json
├── svelte.config.js
└── README.md
```

## Key Features

### Calendar View

The calendar automatically generates from your YAML configuration, showing:
- Week numbers
- Lecture dates and topics
- Material links (color-coded by type)
- Assignment due dates
- Holiday/break periods

### Material Types

Different material types get different colors:
- **Slides** (blue): PDF or PowerPoint presentations
- **Notes** (green): Lecture notes or handouts
- **Recording** (red): Video recordings
- **Code** (gray): Code examples or starter files

Add custom types in `src/lib/classData.ts` → `getBoxColor()` function.

### Assignment Pages

Each assignment can have its own page with:
- Automatic header with due date and points
- Full Markdown support for content
- Code syntax highlighting
- Callout boxes for important info
- Custom components

## Deployment

### GitHub Pages

1. Update `svelte.config.js` if needed for your repository name:

```javascript
paths: {
  base: process.env.BASE_PATH ?? '/your-repo-name'
}
```

2. Build and deploy:

```bash
npm run build
# Deploy the 'build' folder to GitHub Pages
```

### Other Hosting

The built site is in the `build/` folder after running `npm run build`. You can deploy this to:
- Netlify
- Vercel
- Any static hosting service

## Troubleshooting

### Images Not Loading

Make sure images are in `src/static/` and referenced with paths starting with `/`:

```yaml
image: "/images/photo.jpg"  # ✓ Correct
image: "images/photo.jpg"   # ✗ Wrong
```

### Calendar Not Showing

Check that:
1. `start_date` is in correct format: `YYYY/MM/DD`
2. `class_days` array matches your lecture schedule
3. Number of lectures is consistent with weeks × days per week

### Build Errors

Common issues:
- Missing dependencies: run `npm install`
- YAML syntax errors: validate your `class_data.yaml`
- TypeScript errors: Usually auto-resolved after npm install

## Contributing

Feel free to modify and adapt this template for your needs. If you make improvements that might benefit others, consider sharing them!

## License

This template is provided as-is for educational use. Original design inspired by Stanford CS45 course website.

## Credits

- Design inspiration: [Stanford CS45](https://github.com/stanford-cs45/stanford-cs45.github.io)
- Built with: [SvelteKit](https://kit.svelte.dev/), [MDsveX](https://mdsvex.pngwn.io/), [Prism](https://prismjs.com/)
- Icons and styling: Various open-source libraries

## Support

For questions about using this template, please refer to the:
- [SvelteKit documentation](https://kit.svelte.dev/docs)
- [MDsveX documentation](https://mdsvex.pngwn.io/)

For course-specific questions, contact your course instructors.
