# Course Schedule Update Summary

**Date**: December 11, 2025  
**Updated by**: Automated update

## Schedule Changes

### New Course Schedule

- **Day**: Changed from Monday to **Wednesday (Mittwoch)**
- **Time**: **13:15 - 15:00 CET**
- **Start Date**: **February 18, 2026**
- **End Date**: May 27, 2026
- **Total Lectures**: 14 weeks

### Complete Lecture Schedule

| Week | Date | Topic |
|------|------|-------|
| 1 | 18/02/2026 | Course Overview & Python for Image Analysis |
| 2 | 25/02/2026 | Digital Image Formation & Representation |
| 3 | 04/03/2026 | Sampling, Quantization, Resolution |
| 4 | 11/03/2026 | Point Operations & Filtering |
| 5 | 18/03/2026 | Edge Detection & Morphological Operations |
| 6 | 25/03/2026 | Image Segmentation |
| 7 | 01/04/2026 | **Mid-term Exam** (covers lectures 1-6) |
| 8 | 15/04/2026 | Feature Extraction *(Easter break: 08/04)* |
| 9 | 22/04/2026 | Image Registration & 2D vs. 3D Analysis |
| 10 | 29/04/2026 | Introduction to Deep Learning for Image Analysis |
| 11 | 06/05/2026 | **Flash Presentations of Demos** (Assignment 2) |
| 12 | 13/05/2026 | Transfer Learning, Interpretability, Generative Models |
| 13 | 20/05/2026 | Multimodal Learning & Medical Applications |
| 14 | 27/05/2026 | **Final Exam** |

### Updated Assignment Due Dates

| Assignment | Release | Due | Points | Notes |
|------------|---------|-----|--------|-------|
| Assignment 0 | Week 1 (18/02) | Week 2 (25/02) | 5% | Python basics & setup |
| Assignment 1 | Week 2 (25/02) | Week 5 (18/03) | 10% | Convolution & Interpolation |
| Assignment 2 | Week 8 (15/04) | Week 11 (06/05) | 10% | Streamlit Demo & Presentations |
| Assignment 3 | Week 10 (29/04) | Week 13 (20/05) | 15% | Deep Learning vs. Classical |

**Note**: All assignments are distributed and submitted via **GitHub Classroom**.

## GitHub Pages Deployment

### New Files Created

1. **`.github/workflows/deploy.yml`**
   - Automated GitHub Actions workflow
   - Triggers on push to `main` branch
   - Builds and deploys to GitHub Pages automatically

2. **`docs/DEPLOYMENT.md`**
   - Comprehensive deployment guide
   - Step-by-step GitHub Pages setup instructions
   - Troubleshooting tips
   - Configuration options for custom domains

### Setup Instructions

To enable automatic deployment:

1. Go to repository **Settings** > **Pages**
2. Under **Source**, select **GitHub Actions**
3. Push to `main` branch - deployment starts automatically

The site will be available at:
- `https://ubern-image-analysis.github.io/` (organization repo)
- Or your custom domain if configured

## Documentation Updates

### README.md

Added:
- Course schedule information (Wednesdays 13:15-15:00)
- GitHub Classroom and Slack platform mentions
- Updated deployment section with GitHub Actions
- Course information section with semester details
- Enhanced credits and acknowledgments

### Assignment Information

Added notes across multiple pages:
- Assignment 0 based on `00-python-basics` repository
- All assignments via GitHub Classroom
- Clear grading breakdown: 40% assignments (4×), 30% midterm, 30% final

## Files Modified

### Core Configuration

- **`src/class/class_data.yaml`**
  - Updated `start_date` to `2026/02/18`
  - Changed `class_days` from `[Monday]` to `[Wednesday]`
  - Added explicit dates to all 14 lectures
  - Updated all assignment due dates
  - Added Easter break note

### Content Pages

- **`src/routes/+page.svelte.md`** (Home page)
  - Added GitHub Classroom note in grading section
  
- **`src/routes/course_info/+page.svelte.md`**
  - Updated semester to Spring 2026
  - Changed grading table to 40/30/30 split
  - Added Assignment 0 details with GitHub Classroom info

### Infrastructure

- **`README.md`** - Updated with new schedule and deployment info
- **`.github/workflows/deploy.yml`** - New automated deployment workflow
- **`docs/DEPLOYMENT.md`** - New comprehensive deployment guide

## Verification

Build status: ✅ **SUCCESS**

```bash
npm run build
# ✓ built in 5.63s
```

The site builds successfully with all changes applied. The only warnings are expected 404s for PDF files that haven't been created yet (these are handled gracefully by the prerender configuration).

## Next Steps

1. **Enable GitHub Pages** in repository settings
2. **Update Slack URL** in `src/lib/constants.js` when workspace is created
3. **Update GitHub Classroom URL** in `src/lib/constants.js` when classroom is ready
4. **Add instructor photos** to `static/images/`
5. **Update instructor details** in `src/class/class_data.yaml`
6. **Create assignment handouts** as needed

## Testing

To test locally:

```bash
# Development server
npm run dev
# Visit http://localhost:5174/

# Production preview
npm run build
npm run preview
# Visit http://localhost:4173/
```

Both dev and production modes are confirmed working.
