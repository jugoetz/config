---
name: release-manager
description: Handles software versioning and releases using git tags and semantic versioning. Use this when the user wants to create a new release, check current versions, or preview unreleased changes.
---

# Release Manager

## Instructions
When the user wants to create a release or manage versions, follow these steps precisely:

1.  **Preparation**: 
    - Always verify the current version first using `uvx hatch version`.
    - Preview the changes that will be included in the release using `uvx git-cliff --unreleased`.
    - Present this information to the user for confirmation before proceeding with a tag.

2.  **Creating a Release**:
    - Switch to the main branch: `git checkout main`.
    - Ensure the local branch is up to date: `git pull`.
    - Create an annotated tag: `git tag -a [version] -m [version]`.
    - Push the tag to the remote: `git push origin [version]`.
    - **Note**: Version numbers must follow Semantic Versioning (e.g., v1.2.3).

3.  **Tag Management**:
    - To list tags: `git tag -l`.
    - To delete a local tag: `git tag -d [version]`.
    - To delete a remote tag: `git push origin --delete [version]`.

## Examples

**Example 1: Creating a minor release**
User: "We are ready to release the new feature set as v0.2.0."
Assistant: [Checks version and previews changes, then:]
1. `git checkout main`
2. `git pull`
3. `git tag -a v0.2.0 -m v0.2.0`
4. `git push origin v0.2.0`

**Example 2: Checking version status**
User: "What's the current version and what's pending?"
Assistant: 
1. `uvx hatch version`
2. `uvx git-cliff --unreleased`
