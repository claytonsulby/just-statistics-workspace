---
applyTo: "**/*.tex"
---

# Writing LaTeX files in this workspace

- Put LaTeX sources under `tex/` (e.g., `tex/main.tex`).
- Prefer `latexmk` for builds; it handles multiple passes and bibliographies.
- Keep large build artifacts out of git.

## Minimal document template

```tex
\documentclass[11pt]{article}
\usepackage[margin=1in]{geometry}
\usepackage{amsmath, amssymb}
\usepackage{graphicx}
\usepackage{hyperref}
\title{Title}
\author{Author}
\date{\\today}
\begin{document}
\maketitle
Your content here.
\end{document}
```

## Build locally (examples)
- With latexmk (recommended): `latexmk -pdf -interaction=nonstopmode tex/main.tex`
- Clean: `latexmk -C tex/main.tex`

## Style tips
- Use semantic macros for repeated terms.
- Keep figures in a `tex/figures/` subfolder.
- Use `\label`/`\ref` for cross references.
