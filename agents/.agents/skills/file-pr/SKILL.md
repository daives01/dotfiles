---
name: file-pr
description: Use to file a PR
disable-model-invocation: true
---

# File PR

Before filing, check whether a PR for this branch already exists. Review the diff locally against the parent to make sure its contents match the goal.

PR titles usually become commit messages, but double check the git history of the current repo and pattern match. Just make sure it's a concise, human-readable title that explains why the change matters:

BAD
> fix(backend): update TechSpecHelpers.isProductBrief and remove stale refs

GOOD
> fix(backend): ensure app's definition of a product brief is unified

A good PR description starts with a simple explanation of the problem based on the user's original prompt, then a brief explanation of the solution, usually starting with "This PR...". Do not lead with an implementation inventory:

BAD

> ❌ Removed outdated and inaccurate product brief definitions. Unified to a single "isProductBrief". Cleaned up stale refs and smoke tested e2e.

GOOD

> ✅ The definition of a Product Brief in the app has been internally inconsistent, causing various subtle issues. This PR unifies it to a single helper, removes the old and inaccurate defitions, and adds assertions to e2e locking the behavior.

Open a real PR rather than a draft so review bots run.
