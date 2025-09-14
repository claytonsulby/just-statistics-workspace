---
applyTo: "**/*.pdf"
---

# PDF setup with the PDF MCP server

This workspace is configured to use a PDF Model Context Protocol (MCP) server so the assistant can read local PDF textbooks and papers.

Your current MCP configuration file is `.vscode/_mcp.json`. It already includes an entry named "PDF Tools" that points to a hosted PDF MCP. If it’s disabled or missing in your environment, you can re-add it under `servers`:

```jsonc
"PDF Tools": {
  "type": "http",
  "url": "https://server.smithery.ai/@danielkennedy1/pdf-tools-mcp/mcp?api_key=YOUR_KEY"
}
```

Notes:

- Replace `YOUR_KEY` with your own key if you have one. Do not commit secrets.
- Alternatively, you can run a local PDF MCP server (see that project’s README) and change `type` to `stdio`.

## Where to put PDFs

- Place your PDFs in `docs/pdfs/`.
- We recommend keeping large PDFs out of git. See `.gitignore` below.

## Reading PDFs in chat

Ask the assistant to load and read from your PDFs:

- “Index the PDFs in `docs/pdfs`. Use them as primary sources.”
- “Answer using only the PDFs unless asked otherwise.”
- “Cite page numbers when quoting.”

Common actions the PDF server supports:

- List files
- Extract text or sections
- Make snippets of a page region
- Merge/extract pages

## .gitignore suggestion

Add this line to `.gitignore` to keep PDFs out of version control:

```
docs/pdfs/*.pdf
```

If you need to sync PDFs, consider Git LFS instead of regular git.
