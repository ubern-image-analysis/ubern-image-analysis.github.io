# GitHub Pages Deployment Guide

This document explains how to deploy the University of Bern Image Analysis course website to GitHub Pages.

## Prerequisites

- The repository must be hosted on GitHub
- You must have admin access to the repository
- The repository should be named `ubern-image-analysis.github.io` or have a custom domain configured

## Automatic Deployment Setup

The website is configured for automatic deployment using GitHub Actions. Every time you push to the `main` branch, the site will automatically rebuild and deploy.

### Step 1: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** (top right)
3. In the left sidebar, click on **Pages** (under "Code and automation")
4. Under **Source**, select **GitHub Actions**

### Step 2: Verify the Workflow

The deployment workflow is already configured in `.github/workflows/deploy.yml`. This workflow:

- Runs automatically on every push to the `main` branch
- Can also be triggered manually from the Actions tab
- Builds the SvelteKit site using `npm run build`
- Deploys the built site to GitHub Pages

### Step 3: Push Changes

Once GitHub Pages is enabled with GitHub Actions as the source, simply push your changes:

```bash
git add .
git commit -m "Update course content"
git push origin main
```

The deployment will start automatically. You can monitor progress:

1. Go to the **Actions** tab in your GitHub repository
2. Click on the latest workflow run
3. Watch the build and deploy steps

### Step 4: Access Your Site

After the first successful deployment (usually takes 1-3 minutes), your site will be available at:

- **Organization repository**: `https://ubern-image-analysis.github.io/`
- **User repository**: `https://<username>.github.io/ubern-image-analysis.github.io/`

> **Note**: If you see a 404 error immediately after deployment, wait a few minutes as GitHub Pages can take time to propagate.

## Manual Deployment (Alternative)

If you prefer to deploy manually without GitHub Actions:

### Build Locally

```bash
# Install dependencies
npm install

# Build the site
npm run build
```

The built site will be in the `build/` directory.

### Deploy with GitHub Pages (Classic)

1. In repository **Settings** > **Pages**
2. Under **Source**, select **Deploy from a branch**
3. Select the branch containing your built files (e.g., `gh-pages`)
4. Use a tool like `gh-pages` npm package to push the build folder:

```bash
npm install -g gh-pages
gh-pages -d build
```

## Configuration

### Base Path

If your site is not at the root of your domain (e.g., `username.github.io/repo-name/`), update `svelte.config.js`:

```javascript
const config = {
  kit: {
    adapter: adapter(),
    paths: {
      base: process.env.NODE_ENV === 'production' ? '/repo-name' : ''
    }
  }
};
```

Then update `src/lib/constants.js`:

```javascript
export const base = '/repo-name';
```

### Custom Domain

To use a custom domain:

1. Add a `CNAME` file to the `static/` directory with your domain name:
   ```
   courses.unibe.ch
   ```

2. In your domain registrar, create a CNAME record pointing to:
   ```
   ubern-image-analysis.github.io
   ```

3. In GitHub Settings > Pages, enter your custom domain and enable HTTPS

## Troubleshooting

### Build Fails

Check the Actions tab for error messages. Common issues:

- **Missing dependencies**: Run `npm ci` locally to verify `package-lock.json` is committed
- **Build errors**: Test locally with `npm run build`
- **Node version**: The workflow uses Node 20, ensure compatibility

### 404 Errors After Deployment

- Verify the site deployed to the correct branch/source
- Check if a custom domain is configured correctly
- Ensure the base path matches your repository structure
- Wait a few minutes for GitHub's CDN to update

### Styles Not Loading

- Check that the base path is configured correctly in `svelte.config.js`
- Verify all static assets are in the `static/` directory
- Clear your browser cache

## Local Development

To preview the site locally before deploying:

```bash
# Development server (with hot reload)
npm run dev
# Visit http://localhost:5174/

# Production preview (after building)
npm run build
npm run preview
# Visit http://localhost:4173/
```

## Course Content Updates

### Updating Lectures

Edit `src/class/class_data.yaml` to modify lecture topics, dates, and materials.

### Updating Assignments

Assignment metadata is in `src/class/class_data.yaml`. Assignment content pages are in `src/routes/assignments/`.

### Updating Course Information

- **Home page**: `src/routes/+page.svelte.md`
- **Course info**: `src/routes/course_info/+page.svelte.md`
- **Syllabus**: `src/routes/syllabus/+page.svelte.md`

### Updating Links

External links (Slack, GitHub Classroom) are defined in `src/lib/constants.js`.

## GitHub Classroom Integration

Assignments are hosted on GitHub Classroom. Update the links in:

1. `src/lib/constants.js` - Set the `github` constant to your GitHub Classroom URL
2. `src/class/class_data.yaml` - Update individual assignment GitHub links

The Assignment 0 content is sourced from `/Users/amithkamath/repo/teach/00-python-basics` but will be deployed separately through GitHub Classroom.

## Support

For issues with:
- **SvelteKit**: https://kit.svelte.dev/docs
- **GitHub Pages**: https://docs.github.com/en/pages
- **GitHub Actions**: https://docs.github.com/en/actions

## License & Attribution

This website design is based on Stanford CS45, which acknowledges MIT's Missing Semester and Stanford CS110/111. See the acknowledgments section on the home page for full attribution.
