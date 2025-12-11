---
title: 'Image Analysis: Course Info'
---

<script>
  import { base, slack, github } from '$lib/constants';
  import { class_data } from '$lib/classData';
  import Callout from '$lib/Callout.svelte';
</script>

# Course Information

## Course Details

**Course Title:** Introduction to Image Analysis  
**Institution:** University of Bern  
**Level:** Graduate (Masters in Biomedical Engineering)  
**Semester:** Spring 2026

## Meeting Times

**Lectures:** {class_data.class_days.join(' and ')}s  
**Time:** [Time TBD]  
**Location:** [Location TBD]

## Course Links

- **Discussion & Communication:** <a href={slack} target="_blank">Slack Workspace</a>
- **Assignments & Grading:** <a href={github} target="_blank">GitHub Classroom</a>

<Callout warning>

Please update the links above with your actual Slack workspace and GitHub Classroom URLs once available.

</Callout>

## Course Description

This course provides a comprehensive introduction to digital image analysis with applications in biomedical engineering. Students will learn fundamental concepts in image processing, feature extraction, segmentation, and machine learning approaches for automated image analysis. The course emphasizes practical applications through hands-on programming assignments using Python and modern image analysis libraries.

## Learning Objectives

By the end of this course, students will be able to:

1. Understand fundamental concepts of digital image representation and processing
2. Apply image enhancement and filtering techniques for various applications
3. Implement image segmentation and feature extraction algorithms
4. Use machine learning and deep learning methods for image classification
5. Analyze medical images and work with 3D imaging data
6. Develop complete image analysis pipelines for biomedical applications

## Prerequisites

- **Programming:** Experience with Python programming
- **Mathematics:** Linear algebra, calculus, and basic statistics
- **Signal Processing:** Basic understanding of signals and systems (helpful but not required)

## Required Materials

### Software

All required software is free and open-source:
- Python 3.8 or higher
- NumPy, SciPy, Matplotlib
- OpenCV
- scikit-image
- scikit-learn
- PyTorch or TensorFlow (for deep learning modules)

Installation instructions will be provided in the first week of class.

### Textbooks

**Recommended (not required):**
- "Digital Image Processing" by Gonzalez and Woods
- "Computer Vision: Algorithms and Applications" by Richard Szeliski (available free online)
- "Deep Learning" by Goodfellow, Bengio, and Courville (available free online)

## Grading Policy

| Component | Weight |
|-----------|--------|
| Assignments (6) | 70% |
| Final Project | 30% |

### Assignments

- 6 programming assignments throughout the semester
- Each assignment builds on previous concepts
- Collaboration permitted but must acknowledge partners
- Submissions via Gradescope by {class_data.assignment_due_time}

### Final Project

- Independent or small group project (2-3 students)
- Apply course concepts to a real-world image analysis problem
- Project proposal due mid-semester
- Final presentation and report due at end of semester

## Late Policy

- **Grace Period:** 24 hours late with no penalty (one-time use per student)
- **Standard Late Penalty:** 10% per day up to 3 days
- **Extensions:** Available for exceptional circumstances with advance notice

## Academic Integrity

The University of Bern expects all students to uphold the highest standards of academic integrity. For this course:

- You may discuss assignments with classmates but must write your own code
- Acknowledge all collaborators in your submission
- Do not copy code from online sources without attribution
- Plagiarism will result in a failing grade and reported to university administration

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

## Accommodation for Students with Disabilities

Students requiring accommodations should contact [Disability Services Office] as early as possible in the semester. We are committed to ensuring all students have equal access to course materials and activities.

## Course Communication

- **Announcements:** Posted on Canvas and discussion forum
- **Questions:** Use discussion forum for course content questions
- **Private Matters:** Email instructors directly
- **Response Time:** Expect responses within 24-48 hours on weekdays

## Schedule Overview

The course is structured into several major units:

1. **Foundations** (Weeks 1-2): Image fundamentals, representation, and basic operations
2. **Enhancement** (Weeks 3-4): Filtering, frequency domain, and image restoration
3. **Analysis** (Weeks 5-6): Morphology, segmentation, and feature extraction
4. **Recognition** (Weeks 7-8): Machine learning, classification, and deep learning
5. **Advanced Topics** (Weeks 9-10): Medical imaging, 3D processing, and registration

See the [schedule]({base}/) for detailed weekly topics and assignment due dates.

## Additional Resources

- **Computing Resources:** [Information about available computing resources]
- **Writing Center:** [Link to academic writing support]
- **Mental Health:** [Link to student mental health resources]

## Questions?

If you have questions not answered here, please post on the discussion forum or come to office hours. We're here to help you succeed!
