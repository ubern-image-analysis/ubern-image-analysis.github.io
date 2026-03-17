---
layout: assignment
assign: 2
---

<script>
  import Callout from '$lib/Callout.svelte';
  import { class_data } from '$lib/classData';
  let assign = class_data.assignments[2];
</script>

## Overview

This assignment is open-ended. You will build an interactive Streamlit app that teaches one image analysis concept from the course, deploy it publicly on Hugging Face Spaces, and present it in class.

**Estimated Time:** 10-15 hours

## Learning Objectives

By completing this assignment, you will:
- Translate one lecture topic into an interactive educational tool
- Explore parameter sensitivity and algorithm trade-offs
- Build a reliable Streamlit app for non-expert users
- Deploy your app to a public platform (Hugging Face Spaces)
- Explain your method clearly in a short technical demo

## Required Format

- **Deployment target:** Hugging Face Spaces
- **Framework:** Streamlit
- **Presentation:** 4 minutes total (about 3 min demo + 1 min Q&A)

## Choose One Topic

Pick one topic from the course, for example:

1. Segmentation (thresholding, k-means, watershed)
2. Edge detection (Sobel, Laplacian, Canny)
3. Registration (feature matching + transforms)
4. Color spaces and color processing
5. Filtering and denoising
6. Template matching

<Callout info>

If you want a different topic, ask for approval and explain how it maps to course content.

</Callout>

## Minimum App Requirements

Your app must include:

1. **Input and controls**
- File upload plus at least one built-in sample image
- Meaningful interactive controls for parameter exploration
- Clear parameter labels and defaults

2. **Visualization**
- Side-by-side input/output comparison
- At least one diagnostic view (heatmap, mask, histogram, feature matches, etc.)

3. **Metrics**
- Include at least one informative way to evaluate behavior (quantitative metric, diagnostic plot, or reasoned qualitative comparison)
- Brief interpretation text for what the evidence means

4. **Reliability**
- Handles invalid input without crashing
- Runs responsively on normal image sizes

5. **Deployment**
- Public, working Hugging Face Space URL

## Deliverables

Create a repository like the example shown below, with the following suggested structure:

- `app.py`
- supporting modules (`processing.py`, `metrics.py`, `utils.py`, etc.)
- `sample_images/`
- `requirements.txt`
- `README.md` with:
  - project summary
  - local run instructions
  - Hugging Face Space URL
  - screenshots/GIF
  - known limitations
- short design notes (`docs/design_choices.md` recommended)

## Grading Rubric (counts for 10% of the course)

We use a simple rubric (0-5 each, total 20):

- **Concept clarity and technical correctness (0-5)**
- **Insight from exploration (0-5)**
- **Demo quality and usability (0-5)**
- **Reproducibility and deployment readiness (0-5)**

## Presentation Expectations

Suggested 4-minute structure:

1. 0:00-0:30: problem and topic
2. 0:30-1:45: walkthrough of the working app with images
3. 1:45-2:30: exploration of parameter levels and performance trade-offs
4. 2:30-3:00: limitation and possible improvements
5. 3:00-4:00: Q&A

## Recommended Build Workflow with Coding Agents

1. Define your topic and learning objective in one paragraph.
2. Ask your coding agent to scaffold the app structure.
3. Implement one feature at a time (control, visualization, metric, error handling).
4. Test after each feature.
5. Ask your agent to prepare Hugging Face deployment files and troubleshooting checklist.
6. Rehearse your 3-minute explanation + one minute of Q&A.

<Callout warning>

Coding agents are encouraged, but you are expected to understand and explain submitted code and interface.

</Callout>

## Example References

- Colorspaces demo: https://huggingface.co/spaces/ubern-image-analysis/colorspaces
- Camera model projection demo: https://huggingface.co/spaces/ubern-image-analysis/camera-model-projection
- Streamlit docs: https://docs.streamlit.io
- Hugging Face Spaces docs: https://huggingface.co/docs/hub/spaces
