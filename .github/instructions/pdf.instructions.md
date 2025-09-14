---
applyTo: "**/*.pdf"
---

# Studying PDFs without direct PDF access

Important limitation:

- GitHub Copilot Chat cannot open or read local PDF files directly. Treat local PDFs as references only.
- If a PDF MCP server is unavailable or failing, Copilot must not claim it “read” your PDFs.

Assistant workflow when a PDF is referenced (apply to chats about files under `docs/pdfs/`):

1) Do not attempt to open or parse the local PDF.
2) Infer the book/paper metadata from the filename:
  - Remove paths, extensions, and noise like underscores and scan tags.
  - Extract probable title, authors, edition, and year if present.
3) Find a reliable Table of Contents (ToC) online:
  - Search queries to try: "<title> table of contents", "<title> contents", "<title> pdf toc", "<publisher> <title> contents".
  - Prefer publisher pages, library catalogs, course syllabi, or reputable previews (Google Books, WorldCat). Avoid linking to unauthorized copies.
4) Map the user’s question/topic to likely chapters/sections using the ToC.
5) For each likely chapter/topic, search the web for supporting summaries, lecture notes, or authoritative references. Cite the URLs used. Don’t quote paywalled or copyrighted material verbatim.
6) Report back succinctly:
  - List the most relevant chapters/sections and why they match.
  - Summarize key concepts the user should focus on.
  - Optionally provide page ranges if the ToC or public preview shows them.
  - Offer a short reading/learning plan and ask for confirmation before deep-diving.
7) If the user supplies page numbers, screenshots, or copied text, analyze that provided content directly and relate it to the ToC concepts.
8) Be explicit: “I can’t open your local PDF directly; I used the filename and public sources to locate the relevant chapters.”

Optional: Experimental PDF MCP server

- If an MCP server like "PDF Tools" is enabled in your environment, it may support listing PDFs and extracting text or snippets. Availability is not guaranteed, and it may fail depending on your setup.
- If PDF MCP fails or is disabled, follow the filename/ToC workflow above—never claim you read the PDF.

Where to put PDFs

- Place your PDFs in `docs/pdfs/`.
- We recommend keeping large PDFs out of git. See `.gitignore` below.

.gitignore suggestion

Add this line to `.gitignore` to keep PDFs out of version control:

```
docs/pdfs/*.pdf
```

If you need to sync PDFs, consider Git LFS instead of regular git.
