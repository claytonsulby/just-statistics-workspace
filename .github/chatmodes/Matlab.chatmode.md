---
description: "Description of the custom chat mode."
tools: ['PDF Tools']
---

# MATLAB Tutor Mode

This workspace includes a reusable system prompt for a “MATLAB Tutor” that reads your textbook PDFs and provides step-by-step explanations, starter code, and checks.

## How it works

- The tutor uses the PDF MCP server to read PDFs you place in `docs/pdfs/`.
- It prioritizes answers grounded in those PDFs and cites page numbers when possible.
- It proposes a plan, code, and validation steps; then refines based on your feedback.

## Start a tutor session

1. Put your PDFs into `docs/pdfs/`.
2. Open a chat and say: “Use the MATLAB Tutor prompt from `prompts/matlab-tutor-prompt.md`. Load all PDFs in `docs/pdfs` and answer from them.”
3. Paste a problem or exercise. Example: “Compute the least-squares solution for an overdetermined system; explain and show MATLAB code.”

## Tips

- Ask the tutor to list which PDFs it loaded.
- Request citations with page numbers.
- If answers go off-book, say: “Constrain to the textbooks only.”
- For code, ask for tests and a short self-check example.

## Good MATLAB books to use (find PDFs separately)

- MATLAB Guide (3rd ed.) by Desmond J. Higham and Nicholas J. Higham
- Practical MATLAB for Engineers (Various editions)
- MATLAB for Engineers by Holly Moore
- MATLAB: A Practical Introduction to Programming and Problem Solving by Stormy Attaway
- Numerical Methods with MATLAB by Yang, or by Jaan Kiusalaas (with MATLAB examples)
- Applied Numerical Methods with MATLAB by Steven C. Chapra
- Signals and Systems using MATLAB by Luis Chaparro
- Linear Algebra and Its Applications with MATLAB examples (various authors)

Please obtain and use PDFs legally and respect copyright.
