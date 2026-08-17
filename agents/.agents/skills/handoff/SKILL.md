---
name: handoff
description: Capture the current work in a concise handoff for a fresh agent or session.
argument-hint: "What will the next session be used for?"
disable-model-invocation: true
---

# Handoff

Create a handoff that lets a fresh agent continue the work without replaying this conversation.

## Understand the next session

Use my argument, when present, as the focus of the handoff. Otherwise infer the likely next objective from our current work. Inspect the relevant workspace state and artifacts so the handoff reflects what is true now, not just what was said earlier.

Separate settled decisions, current facts, and unresolved questions. Pay particular attention to corrections I made, approaches we rejected, and work that looks complete but has not been verified.

## Write the handoff

Save a Markdown file in the operating system's temporary directory, outside the workspace. Give it a useful name rather than overwriting a generic shared file.

Keep it concise and oriented around continuation. Include what the next agent needs:

- the objective and current state;
- important decisions and constraints, with rationale only where it prevents backtracking;
- the next concrete steps in a sensible order;
- verification still needed, blockers, risks, and open questions;
- relevant paths, URLs, commits, commands, or other sources of truth;
- a short `Suggested skills` section containing only skills that would materially help.

Reference existing specs, plans, issues, ADRs, commits, and diffs instead of copying them. Include enough context to explain why a reference matters, but don't duplicate its contents.

Never include secrets or sensitive personal data. Omit the value entirely rather than preserving it in redacted form.

## Finish

Read the handoff once as if you had no conversation history. Fix missing context, stale claims, and instructions that are not actionable. Then point me to the file and summarize its intended next step in one sentence.
