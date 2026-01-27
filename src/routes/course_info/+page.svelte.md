---
title: 'Image Analysis: Course Info'
---

<script>
  import { base, ilias, github } from '$lib/constants';
  import { class_data } from '$lib/classData';
  import Callout from '$lib/Callout.svelte';
</script>

# Course Information

## Course Details

**Course Title:** Introduction to Image Analysis  
**Institution:** University of Bern  
**Level:** Graduate (Masters in Biomedical Engineering and AI in Medicine)  
**Semester:** Spring 2026

## Meeting Times

**Lectures:** {class_data.class_days.join(' and ')}s  
**Time:** {class_data.location.time}  
**Location:** {class_data.location.name}  
**Address:** {class_data.location.address}

## Course Links

- **Discussion & Communication:** <a href={ilias} target="_blank">ILIAS Message Board</a>
- **Assignments & Grading:** <a href={github} target="_blank">GitHub Classroom</a>

<Callout warning>

The ILIAS Message Board link will be provided once confirmed. Please check back soon.

</Callout>

## Course Description

This course will provide an introduction to algorithms for signal and image processing. A focus will be initially given to theoretical constructs of signal processing, the formation and foundation of images, and applications of use. Algorithmic approaches for the analysis of images will then be introduced for the purpose of image processing. Topics will include edge and corner detections, clustering, image registration, as well as others. Mandatory homework will provide practical experience with the development of these algorithms, including understanding when they work and when they do not.

## Learning Objectives

By the end of this course, students will be able to:

1. Understand fundamental concepts of digital image representation and processing
2. Apply image enhancement and filtering techniques for various applications
3. Implement image segmentation and feature extraction algorithms
4. Use machine learning and deep learning methods for image classification
5. Analyze medical images and work with 3D imaging data
6. Develop image analysis pipelines for biomedical applications

## Prerequisites

- **Programming:** Experience with Python programming
- **Mathematics:** Linear algebra, calculus, and basic statistics
- **Signal Processing:** Basic understanding of signals and systems (helpful but not required)

## Required Materials

### Software

All required software is free and open-source:
- Python 3.10 or higher
- NumPy, SciPy, Matplotlib
- OpenCV
- scikit-image
- scikit-learn
- PyTorch or TensorFlow (for deep learning modules)

Installation instructions will be provided in the first week of class.

### Textbooks

**Recommended (not required):**
- "[Digital Image Processing](https://www.imageprocessingplace.com/)" by Gonzalez and Woods
- "[Computer Vision: Algorithms and Applications](https://szeliski.org/Book/)" by Richard Szeliski
- "[Deep Learning](https://www.deeplearningbook.org/)" by Goodfellow, Bengio, and Courville

## Grading Policy

| Component | Weight |
|-----------|--------|
| Assignments (4) | 40% |
| Mid-term Exam | 30% |
| Final Exam | 30% |

### Assignments

All assignments are distributed and submitted through **GitHub Classroom**:

- **Assignment 0 (5%)**: Introduction to Python programming and environment setup
  - Source repository: Based on `00-python-basics` starter code
  - Ensures all students have the necessary programming foundation
- **Assignment 1 (10%)**: Convolution, Interpolation, and Resizing
- **Assignment 2 (10%)**: Streamlit/HuggingFace Demo (group of 3)
- **Assignment 3 (15%)**: Deep Learning vs. Classical Methods

Collaboration is permitted, but you must write your own code and acknowledge all collaborators.
- Submissions via GitHub Classroom by {class_data.assignment_due_time}

## Late Policy

- **Grace Period:** 24 hours late with no penalty (one-time use per student)
- **Standard Late Penalty:** 10% per day up to 3 days
- **Extensions:** Available for exceptional circumstances with advance notice

## Academic Integrity

The University of Bern expects all students to uphold the highest standards of academic integrity. For this course:

- You may discuss assignments with classmates but must write your own code
- Acknowledge all collaborators in your submission
- Do not copy code from online sources without attribution

## Office Hours

<div>
{#each class_data.instructors as instructor}
<p><strong>{instructor.name}</strong> ({instructor.role}):</p>
<ul>
{#each instructor.officeHours as oh}
<li>{oh.when}, {oh.where}</li>
{/each}
</ul>
{/each}
</div>

## Course Communication

- **Announcements:** Posted on ILIAS discussion forum
- **Questions:** Use discussion forum for course content questions
- **Private Matters:** Email instructors directly
- **Response Time:** Expect responses within 24-48 hours on weekdays

## Schedule Overview

The course is structured into several major units:

1. **Foundations** (Weeks 1-3): Image fundamentals, representation, and basic operations
2. **Enhancement** (Weeks 4-5): Filtering, frequency domain, and morphological processing
3. **Analysis** (Weeks 6-9): Segmentation, feature extraction, and registration
4. **Machine Learning** (Weeks 10-11): Machine learning, best practices

See the [schedule]({base}/) for detailed weekly topics and assignment due dates.

## Questions?

If you have questions not answered here, please post on the discussion forum or come to office hours. We're here to help you succeed!
