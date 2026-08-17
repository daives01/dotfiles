---
name: to-spec
description: Turn the current conversation and codebase context into an implementation-ready spec.
disable-model-invocation: true
---

# To Spec

Turn what we worked through into a spec a senior developer or capable agent can implement without replaying the conversation. Synthesize rather than interview; ask only when a missing decision would change the solution.

## Ground the spec

Read what I point to and inspect the relevant code, tests, project guidance, glossary, and architectural decisions. Use the project's language. Separate decisions from assumptions, open questions, and incidental discussion.

Pay particular attention to testing seams. Prefer proving behavior at the highest stable seam already present in the codebase. If the work needs a new seam or an unusual testing approach, check that choice with me before publishing.

## Write for implementation

Keep the spec proportional and write it as senior-level human planning, not an agent prompt. It should explain:

- the problem from my perspective and the outcome we want;
- the behavior that must be true when the work is complete;
- implementation and architectural decisions that shape the solution;
- how the behavior will be verified, including relevant prior art;
- what is deliberately out of scope;
- unresolved questions or assumptions that should not be mistaken for decisions.

Use stories only when distinct actors or workflows need them. Prefer precise behavior and examples over an exhaustive inventory. Don't include file paths, task breakdowns, or speculative detail that will go stale.

When a prototype produced a small artifact that expresses a decision better than prose—a state machine, schema, reducer, or type shape—include only the decision-rich portion and identify it as prototype-derived.

## Draft together

Write the complete draft to `.scratch/<feature-slug>/spec.md`, even if it may later move to a tracker. Point me there so I can annotate or edit it.

Keep that file as the source of truth. Preserve my edits and incorporate my comments there. Don't paste the whole spec into chat after each revision; summarize the change and point back to the file.

The draft is working material. Don't stage or commit it unless I ask.

## Publish

Publish once, after my final approval, to the destination I name or the project's documented tracker. If neither is clear, leave it local and ask. Don't mirror drafts to Jira, GitHub, or another tracker. Staying local is a valid outcome. Apply the project's normal ready-for-implementation triage, or `ready-for-agent` when none exists.

Before finishing, check that the spec is internally consistent, grounded in the current codebase, and clear about the difference between requirements, decisions, and open questions. Report where it was published and briefly call out any material assumption.
