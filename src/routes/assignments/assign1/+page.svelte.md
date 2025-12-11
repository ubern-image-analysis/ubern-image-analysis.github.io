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

This is a placeholder assignment page. Replace this content with your actual assignment details.

This assignment will introduce you to basic image processing concepts and Python tools for image analysis.

**Estimated Time:** 3-5 hours

## Learning Objectives

By completing this assignment, you will:
- Understand basic image representation in digital form
- Learn to use NumPy and OpenCV for image manipulation
- Implement simple image transformations
- Gain experience with Python programming for image analysis

## Getting Started

### Required Software

Make sure you have installed:
- Python 3.8+
- NumPy
- OpenCV (cv2)
- Matplotlib
- Jupyter Notebook (optional but recommended)

### Installation

```bash
pip install numpy opencv-python matplotlib jupyter
```

## Part 1: Image Loading and Display (2 points)

<Callout info>

For this part, you'll practice loading images and displaying them using different libraries.

</Callout>

1. Load the provided sample image using OpenCV
2. Display the image using Matplotlib
3. Print the image shape, data type, and min/max pixel values

**Deliverable:** A Python script or Jupyter notebook with your code and output.

## Part 2: Basic Image Transformations (3 points)

Implement the following transformations:

1. Convert the image to grayscale
2. Resize the image to 256x256 pixels
3. Rotate the image by 45 degrees
4. Flip the image horizontally

**Deliverable:** Your transformed images and code.

## Part 3: Pixel Manipulation (3 points)

1. Create a function to invert an image (negative)
2. Implement a function to adjust brightness
3. Create a simple threshold function

**Deliverable:** Functions with documentation and example outputs.

## Part 4: Histograms (2 points)

1. Compute and plot the histogram of the grayscale image
2. Implement histogram equalization
3. Display the original and equalized images side-by-side

**Deliverable:** Plots and analysis of the results.

## Submission Guidelines

Submit a single ZIP file to [Gradescope]({assign.materials.gradescope}) containing:

1. `assignment1.py` or `assignment1.ipynb` - Your code
2. `results/` folder - Output images
3. `README.txt` - Brief description of your approach and any challenges

### File Structure

```
assignment1_submission.zip
├── assignment1.py (or .ipynb)
├── results/
│   ├── part1_output.png
│   ├── part2_*.png
│   ├── part3_*.png
│   └── part4_*.png
└── README.txt
```

<Callout warning>

**Due Date:** {class_data.assignments[1].due}  
**Points:** {class_data.assignments[1].points}

Make sure to test your code before submission and include all required files!

</Callout>

## Grading Rubric

| Component | Points | Criteria |
|-----------|--------|----------|
| Part 1 | 2 | Correct loading and display with proper documentation |
| Part 2 | 3 | All transformations implemented correctly |
| Part 3 | 3 | Functions work correctly with edge cases handled |
| Part 4 | 2 | Histograms and equalization implemented properly |
| **Total** | **10** | |

## Tips and Resources

- Start early! Image processing can have unexpected challenges
- Test your code with different images
- Use the discussion forum if you get stuck
- Useful resources:
  - [OpenCV Python Tutorials](https://docs.opencv.org/master/d6/d00/tutorial_py_root.html)
  - [NumPy Documentation](https://numpy.org/doc/)
  - [Matplotlib Gallery](https://matplotlib.org/stable/gallery/index.html)

## Academic Integrity

You may discuss concepts with classmates but must write your own code. Acknowledge any collaborators in your README.txt file.

## Questions?

Post on the discussion forum or come to office hours!
