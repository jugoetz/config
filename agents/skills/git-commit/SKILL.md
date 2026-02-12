---
name: git-commit
description: Creating git commits using conventional commits format
---
# Git Commit

- Use the **Conventional Commits** format for all git commit messages.
- Format: `type(scope): description`
- **Types**: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, `build`, `ci`
- **Scope** (optional): The area of the codebase affected (e.g., `app`, `docker`, `deps`)
- **Description**: Imperative mood, lowercase, no period at the end
- **Examples**:
  - `feat(app): add reaction similarity search tool`
  - `fix(docker): resolve missing README.md during build`
  - `docs: update installation instructions`
  - `chore(deps): bump torch`
  - `refactor(util): move duplicated code to utility function`

## When to use

- Use this skill for all git commits you make

## Attribution in commit messages

- Do NOT add attribution to AI agents or platforms, e.g. never add lines like "Co-authored-by: Cursor"
