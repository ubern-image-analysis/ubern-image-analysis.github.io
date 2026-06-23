---
title: 'Image Analysis: Course Info'
---

<script>
  import { base, ilias } from '$lib/constants';
  import { class_data } from '$lib/classData';
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

- **Discussion & Communication:** <a href={ilias} target="_blank">ILIAS</a> – navigate to the "Introduction to Image Analysis" course and use the discussion board there.


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
- **Python Learning Resource:** If you need a refresher, use [Learn Python with Jupyter](https://www.learnpythonwithjupyter.com), created by Serena Bonaretti (former doctoral student, University of Bern)
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

- **Assignment 0 (5%)**: Introduction to Python programming and environment setup – available on [GitHub Classroom](https://classroom.github.com/a/uYEGH1wE)
- **Assignment 1 (10%)**: Colorspaces, Sampling and Filtering – available on [GitHub Classroom](https://classroom.github.com/a/Ikojcd6a)
- **Assignment 2 (10%)**: Streamlit/HuggingFace Demo (presented individually for less than 5 minutes each) — scheduled on two lecture days; details are available on the [Assignment 2 page]({base}/assignments/assign2)
- **Assignment 3 (15%)**: Deep Learning for Medical Image Classification — train a CNN to classify breast lesions using BreastMNIST; available on [GitHub Classroom](https://classroom.github.com/a/Tj1RlgK1) and details on the [Assignment 3 page]({base}/assignments/assign3)

Collaboration is permitted, but you must write your own code and acknowledge all collaborators.
All assignments are due by {class_data.assignment_due_time} on the specified date.

### Examinations

- **Mid-term Exam (30%)**: Covers lectures 1–5 (Foundations through Edge Detection & Morphological Operations; Segmentation was *not* included). Format: 30 multiple choice questions, one point for each correct answer, 60 minutes.
- **Final Exam (30%)**: Same format as the mid-term — 30 multiple choice questions, one point for each correct answer, 60 minutes. The 30 questions are derived from the lectures on Segmentation (not included in the mid-term), Feature Extraction, Image Registration, Introduction to Deep Learning (Parts I and II), and Best Practices & Reproducibility. **The final exam is on 24 June 2026.**

Together, the mid-term (30%), final exam (30%), and assignments (40%) make up the final grade.

## Academic Integrity

The University of Bern expects all students to uphold the highest standards of academic integrity. For this course:

- You may discuss assignments with classmates but must write your own code
- Acknowledge all collaborators in your submission
- Do not copy code from online sources without attribution
- Using coding agents is allowed, but you are fully responsible for the correctness of your submission
- You must be able to explain and justify any part of your submitted work if asked

## Course Communication

- **Announcements:** Posted on ILIAS discussion forum
- **Questions:** Navigate to the "Introduction to Image Analysis" course on <a href={ilias} target="_blank">ILIAS</a> and use the discussion board there
- **Private Matters:** Email instructors directly
- **Meetings:** By appointment only
- **Response Time:** Expect responses within 24-48 hours on weekdays

## Schedule Overview

The course is structured into several major units:

1. **Foundations** (Weeks 1–3): Image formation, representation, and basic operations
2. **Classical Processing** (Weeks 4–5): Filtering, edge detection, and morphological operations
3. **Feature Analysis & Registration** (Weeks 6, 8–9): Feature extraction and image registration, after the Easter and Spring break
4. **Deep Learning** (Weeks 10–12): Deep neural networks and advanced architectures

See the [schedule]({base}/) for detailed weekly topics and assignment due dates.

## Questions?

If you have questions not answered here, please post on the discussion forum or email the instructors to set up an appointment. We're here to help you succeed!
