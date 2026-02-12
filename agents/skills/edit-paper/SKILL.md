---
name: edit-paper
description: Specialized skill for writing, formatting, and building a manuscript using LaTeX. Use this when editing .tex files, managing citations, and compiling the project.
---

# Edit Paper

This skill enables the agent to act as a professional scientific author and writing assistant.

## When to Use
- When the user wants to add or rewrite sections of the paper.
- When generating tables or inserting figures.
- When fixing citation errors or bibliography issues.
- When the user wants to compile the document into a PDF.

## Instructions

- Act a helpful writing assistent
- Be very precise and careful not to make up any data or observations
- Make focussed, atomic edits.
- If guidance on formatting is missing, check the original rsc template (never modify that), and ask the user if it can't be resolved.

### 1. Editing Conventions
- **Chemical Formulas:** Always use the `\ce{...}` command from the `mhchem` package for chemical formulas (e.g., `\ce{H2O}`, `\ce{Fe^2+}`).
- **Scientific Units:** Use `siunitx` formatting or standard spacing (e.g., `10~mg`) to ensure units don't wrap to new lines.
- **Figures:** When inserting figures, use the `[ht]` or `[t!]` float specifiers to avoid "h float changed to ht" warnings.
- **Citations:** Verify citation keys against `rsc.bib`. Use `\cite{...}` for standard citations.

### 2. Table Generation
- Prefer the `booktabs` style (using `\toprule`, `\midrule`, and `\bottomrule`) for clean, publication-ready tables.
- Ensure all tables are wrapped in a `\begin{table}` environment with a descriptive `\caption` and a `\label`.

### 3. Build & Compile Process
- **Do not** run `pdflatex` manually if a `Makefile` is present.
- To compile the document, use the terminal to run: `make` within the manuscript directory.
- If a build fails, read the `.log` file or the compiler output to identify the specific line and error before attempting a fix.
- After a successful build, the `Makefile` will handle the cleanup of auxiliary files; do not manually delete them unless troubleshooting.

### 4. Bibliography Management
- When the user mentions a new reference, check if it exists in `rsc.bib`.
- If adding a new entry to `rsc.bib`, ensure the BibTeX format is valid and the citation key is unique.
- Never make up references. If adding a new reference, alsways ensure every detail is correct for the paper you want to cite. Escalate any doubts to the user.

### 5. Troubleshooting
- If "Font not found" or "Package missing" errors occur, suggest running `tlmgr install <package-name>` in the remote terminal.
- Ask questions if the subsection or figure placement intent is unclear.