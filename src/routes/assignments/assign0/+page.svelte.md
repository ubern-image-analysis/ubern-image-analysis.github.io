---
layout: assignment
assign: 0
---

<script>
  import Callout from '$lib/Callout.svelte';
  import { class_data } from '$lib/classData';
  let assign = class_data.assignments[0];
</script>

## Overview

This assignment helps you gain foundational programming skills in Python, with a focus on image processing concepts. You will complete **6 programming tasks** covering image file reading, colour space conversion, image inversion, and basic statistical analysis using NumPy.

**Estimated Time:** 3–5 hours

## Learning Objectives

By completing this assignment, you will:
- Master basic Python syntax: variables, loops, conditionals, functions
- Understand NumPy arrays and image representation
- Work with RGB and grayscale images
- Implement fundamental image processing operations (inversion, normalisation, statistics)
- Handle edge cases and robustness in image processing

## Getting Started

### Prerequisites

- Python 3.11 or higher
- Git
- `uv` (recommended) — fast Python package manager

### Setup

<Callout info>

There are three ways to set up your environment: via the Makefile (recommended), manually with `uv`, or using GitHub Codespaces (no local installation required). See `SETUP.md` in your repository for full instructions.

</Callout>

**Quickstart with Makefile:**

```bash
git clone <your-repo-url>
cd <name-of-repo>
make setup   # creates virtual environment and installs dependencies
make test    # run all tests to verify your setup
```

Accept the assignment on GitHub Classroom using the link above, then clone your personal repository.

## Assignment Tasks

Complete the following 6 functions in `python_basics.py`:

### 1. Read PNG Image
`read_png_as_array(filepath)` — Read a PNG image file and return it as a NumPy array.

### 2. Read NIfTI File
`read_nifti_file(filepath)` — Read a NIfTI file (`.nii` or `.nii.gz`) and return it as a NumPy array.

### 3. RGB to Grayscale Conversion
`rgb_to_grayscale(image)` — Convert an RGB image to grayscale using the luminosity method:

$$\text{Gray} = 0.299 \cdot R + 0.587 \cdot G + 0.114 \cdot B$$

### 4. Image Inversion
`invert_image(image)` — Create a negative image by computing $255 - x$ for each pixel value $x$.

### 5. Image Statistics
`image_statistics(image)` — Calculate and return the mean, standard deviation, minimum, and maximum pixel values.

### 6. Image Normalisation
`normalize_image(image)` — Normalise pixel values to the $[0, 1]$ range using:

$$\hat{x} = \frac{x - \min}{\max - \min}$$

## Grading

- **Programming tasks (100%):** Auto-graded via unit tests run through GitHub Actions.

## Submission

Push your completed code to GitHub. Tests run automatically on each push — check the **Actions** tab in your repository to see results.

```bash
git add .
git commit -m "Complete Assignment 0"
git push origin master
```
