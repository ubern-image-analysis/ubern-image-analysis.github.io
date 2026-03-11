---
layout: assignment
assign: 1
---

<script>
  import Callout from '$lib/Callout.svelte';
  import { class_data } from '$lib/classData';
  let assign = class_data.assignments[1];
</script>

## Overview

This assignment tests your ability to implement core image processing algorithms **from scratch**. Each of the 6 problems requires you to implement one function covering topics from Lectures 2–4: camera models, colour spaces, interpolation, image pyramids, convolution, and template matching.

**Estimated Time:** 8–12 hours

## Learning Objectives

By completing this assignment, you will:
- Project 3D world points to 2D image coordinates using the pinhole camera model (Lecture 2)
- Convert between RGB and HSV colour spaces (Lecture 2)
- Rotate images using inverse mapping and bilinear interpolation (Lecture 3)
- Blend images seamlessly using Laplacian pyramid blending (Lecture 3)
- Implement 2D convolution from scratch with boundary handling (Lecture 4)
- Implement Normalised Cross-Correlation (NCC) for template matching (Lecture 4)

## Getting Started

### Prerequisites

- Python 3.11 or higher
- Git
- `uv` (recommended) — fast Python package manager

### Setup

```bash
git clone <your-repo-url>
cd 01-filtering-and-edges
make setup   # creates virtual environment and installs dependencies
make test    # run all tests
```

Accept the assignment on GitHub Classroom using the link above, then clone your personal repository.

## Assignment Tasks

Each problem has **one function** for you to implement. Do not use the restricted libraries listed in the problem descriptions.

### Problem 1: 3D Point Projection (Lecture 2)

`problem_1_projection.py` — Project 3D world points onto a 2D image plane using the **pinhole camera model**.

**Function:** `project_points(points_3d, K, R, t)` → `(N, 2)` pixel coordinates

### Problem 2: RGB to HSV Conversion (Lecture 2)

`problem_2_color_spaces.py` — Convert an RGB image to HSV colour space **from scratch**.

**Function:** `rgb_to_hsv(image)` → `(H, W, 3)` array with Hue, Saturation, Value channels

### Problem 3: Image Rotation (Lecture 3)

`problem_3_rotation.py` — Rotate a grayscale image using **inverse mapping and bilinear interpolation**.

**Function:** `rotate_image(image, angle_degrees)` → rotated `(H, W)` image

### Problem 4: Laplacian Pyramid Blending (Lecture 3)

`problem_4_pyramid_blending.py` — Blend two images seamlessly using **Laplacian pyramid blending**. Helper functions for Gaussian blur, downsampling, and upsampling are provided.

**Function:** `blend_images(image1, image2, mask, num_levels)` → blended `(H, W)` image

### Problem 5: 2D Convolution (Lecture 4)

`problem_5_convolution.py` — Implement **2D convolution from scratch** with boundary handling.

**Function:** `convolve2d(image, kernel, boundary, mode)` → convolved image

<Callout warning>

Do **not** use `scipy.signal.convolve`, `numpy.convolve`, or `cv2.filter2D`.

</Callout>

### Problem 6: Normalised Cross-Correlation (Lecture 4)

`problem_6_template_matching.py` — Implement **NCC template matching** from scratch.

**Function:** `compute_ncc(image, template)` → NCC score map in $[-1, 1]$

<Callout warning>

Do **not** use `scipy.signal.correlate`, `cv2.matchTemplate`, `skimage.feature.match_template`, or `numpy.lib.stride_tricks.sliding_window_view`.

</Callout>

## Grading

30 unit tests are auto-graded via GitHub Actions. Each passed test contributes proportionally toward a maximum score of 100.

| Problem | Topic | Tests | Lecture |
|---------|-------|-------|---------|
| 1. Projection | Pinhole camera 3D → 2D | 5 | 2 |
| 2. Colour Spaces | RGB → HSV conversion | 5 | 2 |
| 3. Rotation | Inverse mapping + bilinear interpolation | 5 | 3 |
| 4. Pyramid Blending | Laplacian pyramid blending | 5 | 3 |
| 5. Convolution | 2D convolution from scratch | 5 | 4 |
| 6. Template Matching | Normalised Cross-Correlation | 5 | 4 |
| **Total** | | **30** | |

## Submission

Push your completed code to GitHub. Tests run automatically on each push — check the **Actions** tab in your repository to see results.

```bash
git add .
git commit -m "Complete Assignment 1"
git push origin main
```

## Academic Integrity

Work on this assignment individually. You may consult documentation and tutorials. If you use AI tools (chatbots), acknowledge this in a comment in your code.

