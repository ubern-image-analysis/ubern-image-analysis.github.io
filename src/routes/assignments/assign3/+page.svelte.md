---
layout: assignment
assign: 3
---

<script>
  import Callout from '$lib/Callout.svelte';
  import { class_data } from '$lib/classData';
  let assign = class_data.assignments[3];
</script>

## Overview

You will design and train a convolutional neural network (CNN) to classify breast lesions as benign or malignant using the [BreastMNIST](https://medmnist.com/) dataset — 28 × 28 grayscale images, binary classification.

Your goal is to **maximise test-set accuracy**. Grading is out of **15 points**:

| Test-set accuracy | Score |
|---|---|
| ≤ reference accuracy (~0.73) | 5 / 15 |
| 1.0 (perfect) | 15 / 15 |
| anything in between | linearly interpolated |

**Estimated Time:** 8–12 hours

## Learning Objectives

By completing this assignment, you will:
- Implement and train a CNN for binary medical image classification
- Design and iterate on neural network architectures
- Tune hyperparameters (learning rate, batch size, number of epochs)
- Evaluate model performance on a held-out test set
- Understand the grading workflow via GitHub Actions

## Getting Started

### Prerequisites

- Python 3.11 or higher
- Git
- `uv` (recommended) — fast Python package manager. Install once with:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Setup

```bash
git clone <your-repo-url>
cd <name-of-repo>
make setup
source .venv/bin/activate
```

Accept the assignment on GitHub Classroom using the link above, then clone your personal repository.

## Assignment Tasks

You may **only edit two files**. Everything else is part of the grading scaffold — do not modify it.

| File | What to change |
|---|---|
| `model.py` | CNN architecture inside `BreastLesionCNN` |
| `config.yaml` | Training hyperparameters: `batch_size`, `learning_rate`, `num_epochs` |

### Step 1 — See the reference model

```bash
make baseline
```

Runs inference with the pre-trained reference CNN (`models/baseline_cnn.pt`) and prints its test-set accuracy. This is the score you need to beat.

### Step 2 — Edit `model.py` and `config.yaml`

Change the architecture and/or hyperparameters. See the comments inside each file for guidance.

<Callout warning>

Keep `num_epochs` ≤ 100 in `config.yaml`. Submissions with a saved model file larger than **10 MB** or inference time exceeding **30 seconds** on the test set will fail the corresponding grading tests.

</Callout>

### Step 3 — Train your model

```bash
make train
```

Trains `BreastLesionCNN` using your `config.yaml` settings and saves weights to `models/submission_cnn.pt`. Per-epoch accuracy is printed so you can monitor progress.

### Step 4 — Evaluate your model

```bash
make evaluate
```

Loads `models/submission_cnn.pt` — **no retraining** — runs inference on the test set, and prints your estimated score out of 15.

### Step 5 — Run the grading tests locally

```bash
make test
```

Runs the same tests that will run on GitHub when you push. Each of the 30 threshold tests is worth 0.5 points.

## Grading

Grading is fully automated via GitHub Actions. The score formula is:

$$\text{score} = \text{clamp}\!\left(5 + 10 \cdot \frac{\text{accuracy} - \text{acc}_\text{ref}}{1 - \text{acc}_\text{ref}},\; 5,\; 15\right)$$

When you push, GitHub Actions checks out your repository, installs dependencies, and runs `pytest tests/ -v`. The tests load `models/submission_cnn.pt`, reconstruct your model using the `BreastLesionCNN` class from `model.py`, and run inference on the BreastMNIST test set. **No training happens on the server.**

## Submission

Commit and push your model weights along with your code changes:

```bash
git add model.py config.yaml models/submission_cnn.pt
git commit -m "Improve CNN architecture and hyperparameters"
git push
```

<Callout warning>

`models/submission_cnn.pt` **must be committed**. GitHub grading loads the saved file and runs inference — it does not retrain. If the file is missing, all grading tests will fail.

</Callout>

Check the **Actions** tab in your repository to see results after each push.
