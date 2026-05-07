---
title: 'Image Analysis - University of Bern'
---

<script>
  import { base } from '$app/paths';
  import Calendar from '$lib/Calendar.svelte';
  import { class_data, fixupLink } from '$lib/classData';
  import Callout from '$lib/Callout.svelte';
  import { ilias } from '$lib/constants';
</script>

# Introduction to Image Analysis

**Graduate Course at the University of Bern**

Welcome to the course website for Introduction to Image Analysis! This course covers concepts in digital image processing and analysis, with a focus on applications in biomedical engineering.

## Course Overview

This graduate-level course provides a broad introduction to image analysis techniques and their applications in biomedical engineering. Topics include:

- Image formation and representation
- Image enhancement and filtering
- Frequency domain processing
- Image segmentation and feature extraction
- Image registration and transformations
- Machine learning and deep learning for image analysis
- Medical image processing and 3D imaging


## Course Information

<Callout info>

<p>
<strong>Lectures:</strong> {class_data.class_days.join(" and ")}s<br/>
<strong>Time:</strong> {class_data.location.time}<br/>
<strong>Location:</strong> {class_data.location.name}<br/>
<strong>Address:</strong> {class_data.location.address}<br/>
<strong>Assignment Due Time:</strong> {class_data.assignment_due_time}<br/>
For course links and communication, see the <a href="{base}/course_info">Course Info</a> page.
</p>

</Callout>

## Schedule

<Calendar />

## Teaching Team

<div>
{#each class_data.instructors as instructor}
  <div style="margin-bottom: 15px;">
    <strong>{instructor.name}</strong> ({instructor.role})<br/>
    <a href="mailto:{instructor.email}">{instructor.email}</a>
  </div>
{/each}
</div>

## Course Policies

### Prerequisites

Students should have:
- Basic programming experience (Python preferred)
- Understanding of linear algebra and calculus
- Familiarity with basic signal processing concepts

### Grading

- **Assignments (40%)**: Four programming assignments (5%, 10%, 10%, 15%)
  - Assignment 0 is available on [GitHub Classroom](https://classroom.github.com/a/uYEGH1wE). Assignment 0 includes Python environment setup and basic programming exercises
  - Assignment 1 is available on [GitHub Classroom](https://classroom.github.com/a/Ikojcd6a)
  - Assignment 2 details are available on the [Assignment 2 page]({base}/assignments/assign2) (no GitHub Classroom link)
  - Assignment 3 is available on [GitHub Classroom](https://classroom.github.com/a/Tj1RlgK1) — train a CNN to classify breast lesions; details on the [Assignment 3 page]({base}/assignments/assign3)
- **Mid-term Exam (30%)**: Covers classical image analysis (Lectures 1–6)
- **Final Exam (30%)**: Covers lectures 7–11 (Feature Extraction, Registration, and Deep Learning content). Lectures 1–6 are assessed in the mid-term only. **Exam dates are not yet fixed.**

### Academic Integrity

All work submitted must be your own. Collaboration on assignments is permitted, but you must write your own code and acknowledge all collaborators. Using coding agents is allowed, but you are fully responsible for the correctness of your submission and must be able to explain any part of your work if asked. Plagiarism will not be tolerated.

## Getting Started

1. Review the [course information page]({base}/course_info)
2. Check the schedule above for upcoming lectures and assignments
3. Set up your development environment with Python, NumPy, OpenCV, and scikit-image
4. See the [assignments page]({base}/assignments) for assignment details and submission links

## Contact

For course-related questions, navigate to the "Introduction to Image Analysis" course on <a href={ilias} target="_blank">ILIAS</a> and use the discussion board there. For private matters, contact the instructors via email.

---

## Acknowledgments

This course website is based on the design and structure of [Stanford CS45: Software Tools Every Programmer Should Know](https://github.com/stanford-cs45/stanford-cs45.github.io), and [The Missing Semester of Your CS Education](https://missing.csail.mit.edu/) (MIT CSAIL).

We are grateful to these educators for making their course materials and website designs openly available. The course content for Introduction to Image Analysis is original and developed by the University of Bern faculty.
