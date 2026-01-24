---
title: 'Image Analysis - University of Bern'
---

<script>
  import { base } from '$app/paths';
  import Calendar from '$lib/Calendar.svelte';
  import { class_data, fixupLink } from '$lib/classData';
  import Instructor from '$lib/Instructor.svelte';
  import Callout from '$lib/Callout.svelte';
  import { ilias, github } from '$lib/constants';
</script>

# Introduction to Image Analysis

**University of Bern - Graduate Course for Biomedical Engineering Masters Students**

Welcome to the course website for Introduction to Image Analysis! This course covers fundamental and advanced concepts in digital image processing and analysis, with a focus on applications in biomedical engineering.

## Course Overview

This graduate-level course provides a comprehensive introduction to image analysis techniques and their applications in biomedical engineering. Topics include:

- Image fundamentals and representation
- Image enhancement and filtering
- Frequency domain processing
- Image segmentation and feature extraction
- Image registration and motion analysis
- Object recognition and classification
- Machine learning and deep learning for image analysis
- Medical image processing and 3D imaging


## Course Information

<Callout info>

<p>
<strong>Lectures:</strong> {class_data.class_days.join(" and ")}s<br/>
<strong>Assignment Due Time:</strong> {class_data.assignment_due_time}<br/>
<strong>Course Links:</strong> <a href={github} target="_blank" rel="noopener">GitHub Classroom</a> {#if ilias !== "TBD"}| <a href={ilias} target="_blank" rel="noopener">ILIAS Message Board</a>{/if}
</p>

</Callout>

## Schedule

<Calendar />

## Teaching Team

<div style="display: flex; flex-wrap: wrap; justify-content: center;">
  {#each class_data.instructors as instructor}
    <Instructor
      name={instructor.name}
      role={instructor.role}
      email={instructor.email}
      officeHours={instructor.officeHours}
      src={fixupLink(instructor.image)}
    />
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
  - All assignments are distributed and submitted via **GitHub Classroom**
  - Assignment 0 includes Python environment setup and basic programming exercises
- **Mid-term Exam (30%)**: Covers classical image analysis (Lectures 1-6)
- **Final Exam (30%)**: Comprehensive exam covering all topics
- **Note**: Higher final exam score can replace mid-term grade

### Academic Integrity

All work submitted must be your own. Collaboration on assignments is permitted, but you must write your own code and acknowledge all collaborators. Plagiarism will not be tolerated.

## Getting Started

1. Review the [course information page]({base}/course_info)
2. Check the schedule above for upcoming lectures and assignments
3. {#if ilias !== "TBD"}Reach out to us on [ILIAS Message Board]({ilias}) for announcements and questions{:else}Check back soon for the ILIAS Message Board link for announcements and questions{/if}
4. Set up your development environment with Python, NumPy, OpenCV, and scikit-image

## Contact

For course-related questions, please use ILIAS. For private matters, contact the instructors via email.

---

## Acknowledgments

This course website is based on the design and structure of [Stanford CS45: Software Tools Every Programmer Should Know](https://github.com/stanford-cs45/stanford-cs45.github.io) by Jonathan Kula, Akshay Srivatsan, and Ayelet Drazen. The CS45 website itself acknowledges:

- [The Missing Semester of Your CS Education](https://missing.csail.mit.edu/) (MIT CSAIL) by Anish Athalye, Jon Gjengset, and Jose Javier Gonzalez Ortiz
- Stanford CS110 and CS111 websites by John Ousterhout and Jerry Cain

We are grateful to these educators for making their course materials and website designs openly available. The course content for Introduction to Image Analysis is original and developed by the University of Bern faculty.
