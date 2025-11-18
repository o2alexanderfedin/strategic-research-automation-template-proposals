---
description: Export sprint findings to various formats (PDF, DOCX, HTML)
argument-hint: [sprint-number] [format]
allowed-tools: Read, Write, Bash
---

# Export Findings

You are executing the `/export-findings` command to export sprint $1 findings to $2 format.

## Purpose

Export strategic research findings from markdown to professional formats (PDF, DOCX, HTML) suitable for stakeholder presentations and distribution.

## Steps to Execute

### Step 1: Validate Arguments

Check $1 is valid sprint number 01-99 (or "00" for comparison report).
Check $2 is one of: pdf, docx, html, markdown.
Default to "pdf" if $2 not provided.

### Step 2: Verify Source Report

Confirm reports/$1-*-report.md exists.
Check file is non-empty and well-formed markdown.

### Step 3: Execute Format Conversion

Use Bash tool with pandoc:

For PDF:
```bash
# Convert Mermaid diagrams to images before PDF generation
pandoc reports/$1-*-report.md -o reports/$1-*-report.pdf \
  --pdf-engine=xelatex \
  --toc \
  --number-sections \
  --metadata title="Strategic Research Report: Sprint $1" \
  --variable geometry:margin=1in \
  --filter mermaid-filter 2>/dev/null || \
pandoc reports/$1-*-report.md -o reports/$1-*-report.pdf \
  --pdf-engine=xelatex \
  --toc \
  --number-sections \
  --metadata title="Strategic Research Report: Sprint $1" \
  --variable geometry:margin=1in
```

Note: If `mermaid-filter` is installed (`npm install -g mermaid-filter`), Mermaid diagrams will be rendered as images in PDF. If not available, PDF will be generated without diagram rendering (code blocks remain as text).

For DOCX:
```bash
pandoc reports/$1-*-report.md -o reports/$1-*-report.docx \
  --toc \
  --number-sections \
  --reference-doc=templates/report-template.docx
```

For HTML:
```bash
pandoc reports/$1-*-report.md -o reports/$1-*-report.html \
  --standalone \
  --toc \
  --css=templates/report-styles.css \
  --metadata title="Strategic Research Report: Sprint $1" \
  --include-in-header=<(cat <<'HEADER'
<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true, theme: 'default', securityLevel: 'loose' });
</script>
HEADER
)
```

Note: Mermaid.js is automatically included for rendering diagrams in HTML exports.

### Step 4: Validate Export

Check output file exists.
Verify file size is reasonable (>50KB).

### Step 5: Output Confirmation

Display export success with file location and size.

## Success Criteria

- Source report found and validated
- Pandoc conversion successful
- Output file created and verified
- File format matches requested

## Error Handling

If pandoc not installed:
```
ERROR: pandoc not found

Install pandoc:
- macOS: brew install pandoc
- Ubuntu: sudo apt install pandoc
- Windows: Download from https://pandoc.org/

For PDF export, also need LaTeX:
- macOS: brew install basictex
- Ubuntu: sudo apt install texlive-xetex

For Mermaid diagram rendering in PDFs (optional but recommended):
- Install Node.js/npm first
- macOS: brew install node
- Ubuntu: sudo apt install npm
- Then: sudo npm install -g @mermaid-js/mermaid-cli mermaid-filter
```

If source report missing, guide user to execute sprint or synthesize report.

If mermaid-filter not available: PDFs will still be generated but Mermaid diagrams will appear as code blocks instead of rendered images.

## Expected Output

User receives confirmation of export with output file path and format.
