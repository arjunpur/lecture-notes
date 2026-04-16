# Lecture Notes Repository

This repository holds Bodhi-managed LaTeX lecture notes for multiple courses.

## Courses

- `courses/models-of-neural-systems/`
- `courses/machine-intelligence-i/`
- `courses/acquisition-and-analysis-of-neural-data-summer/`

Each course directory is self-contained and should be buildable from inside that directory.

## Build

### Models of Neural Systems

```bash
cd courses/models-of-neural-systems
make all
```

### Machine Intelligence I

```bash
cd courses/machine-intelligence-i
make all
```

## Generated PDFs

Each course keeps its current canonical export in the course directory:

- `courses/models-of-neural-systems/models-of-neural-systems-lecture-notes.pdf`
- `courses/machine-intelligence-i/machine-intelligence-i-lecture-notes.pdf`
- `courses/acquisition-and-analysis-of-neural-data-summer/acquisition-and-analysis-of-neural-data-summer-lecture-notes.pdf`

The repo-backed preview site is generated under `site/` and is intentionally not committed.

## Notes

- The canonical GitHub repository is `arjunpur/lecture-notes`.
- Bodhi's lecture-notes workflow is configured to read, build, and publish directly from this repo.
