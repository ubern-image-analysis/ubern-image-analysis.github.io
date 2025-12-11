# Installation & Verification Guide

## Prerequisites Check

Before starting, ensure you have:
- ✅ Node.js 18 or higher
- ✅ npm (comes with Node.js)

Check versions:
```bash
node --version  # Should be v18.0.0 or higher
npm --version   # Should be 8.0.0 or higher
```

If not installed, download from: https://nodejs.org/

## Installation Steps

### Step 1: Navigate to Project Directory

```bash
cd /Users/amithkamath/repo/teach/ubern-image-analysis.github.io
```

### Step 2: Install Dependencies

**Option A: Use the setup script (recommended)**
```bash
./setup.sh
```

**Option B: Manual installation**
```bash
npm install
```

This will install all required packages (~5 minutes):
- SvelteKit and Svelte
- Markdown processing libraries (mdsvex, unified, remark, rehype)
- Moment.js for date handling
- Prism for syntax highlighting
- And all other dependencies

### Step 3: Verify Installation

```bash
npm run dev
```

You should see:
```
  VITE v5.x.x  ready in XXX ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: use --host to expose
  ➜  press h + enter to show help
```

### Step 4: Open in Browser

Visit: http://localhost:5173

You should see your course website with:
- Navigation bar with "Image Analysis" title
- Course overview
- Calendar showing 10 weeks of lectures
- Instructor placeholders
- All pages accessible

## Troubleshooting

### Issue: "Cannot find module" errors

**Solution:** Make sure dependencies are installed
```bash
rm -rf node_modules package-lock.json
npm install
```

### Issue: Port 5173 already in use

**Solution:** Kill the process or use a different port
```bash
npm run dev -- --port 3000
```

### Issue: TypeScript errors in editor

**Solution:** These are expected before `npm install`. After installation, run:
```bash
npm run check
```

### Issue: Build fails

**Solution:** Ensure all files are present
```bash
# Check if all required files exist
ls -la src/class/class_data.yaml
ls -la src/lib/classData.ts
ls -la src/routes/+page.svelte.md

# Try clean build
rm -rf .svelte-kit
npm run build
```

### Issue: Blank page in browser

**Solution:** Check browser console for errors
1. Open browser DevTools (F12)
2. Look at Console tab
3. Check for 404 errors (missing files)
4. Verify YAML syntax in class_data.yaml

## Verification Checklist

After installation, verify:

- [ ] Development server starts without errors
- [ ] Homepage loads with course title
- [ ] Navigation bar shows all menu items
- [ ] Calendar displays 10 weeks of lectures
- [ ] Clicking "Lectures" shows lecture list
- [ ] Clicking "Assignments" shows assignment list
- [ ] Clicking "Course Info" shows policies page
- [ ] Placeholder instructor photos appear
- [ ] No console errors in browser

## Common Questions

### Q: The calendar shows past dates
**A:** Update `start_date` in `src/class/class_data.yaml`

### Q: Instructor photos don't show
**A:** Expected - replace placeholders with real photos in `src/static/images/`

### Q: Links say "example.com"
**A:** Expected - update URLs in `src/lib/constants.js`

### Q: Colors don't match my university
**A:** Customize colors in `src/style.css` (search for `#2689ff`)

## Next Steps After Verification

Once verified, follow these guides in order:

1. **QUICKSTART.md** - Essential 3-file edits (15 minutes)
2. **CUSTOMIZATION.md** - Complete customization (1-2 hours)
3. **README.md** - Full documentation reference

## Build for Production

After customization, build the production site:

```bash
npm run build
```

Output will be in `build/` folder.

Preview production build:
```bash
npm run preview
```

## File Permissions (macOS/Linux)

If you get permission errors:

```bash
chmod +x setup.sh
chmod -R 755 src/
```

## Editor Setup

### VS Code (Recommended)

Install these extensions:
- Svelte for VS Code
- Prettier - Code formatter
- YAML

### Other Editors

Any text editor works, but make sure it supports:
- Syntax highlighting for Svelte
- YAML validation
- Markdown preview

## Development Tips

1. **Hot Reload:** Changes auto-refresh in browser
2. **Check Terminal:** Watch for build errors
3. **Browser Console:** Check for runtime errors
4. **Save Often:** Changes apply immediately

## Performance

### Development Server
- First start: ~10-15 seconds
- Hot reload: ~1-2 seconds
- Full rebuild: ~5-10 seconds

### Production Build
- Build time: ~30-60 seconds
- Output size: ~500KB - 2MB (depends on images)

## Success Indicators

You're ready to customize when:
- ✅ `npm run dev` starts without errors
- ✅ Website loads in browser
- ✅ All pages are accessible
- ✅ No red errors in terminal
- ✅ No console errors in browser

## Need Help?

If you're stuck:
1. Check this guide first
2. Review error messages carefully
3. Search for specific errors online
4. Check SvelteKit docs: https://kit.svelte.dev/docs

## Ready to Customize!

Once installation is verified, start with `QUICKSTART.md` to make the site yours!

🎉 **Congratulations! Your course website is installed and running!**
