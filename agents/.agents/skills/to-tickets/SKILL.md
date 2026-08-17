---
name: to-tickets
description: Turn a plan, spec, or conversation into clear tickets ordered the way a person would implement the work.
disable-model-invocation: true
---

# To Tickets

Turn a plan, spec, or discussion into tickets a senior developer or capable agent can understand and implement. Write like a person explaining work to a teammate: plain language, useful context, no project-management word salad.

## Understand the work

Read the full source material, including relevant issue comments. Inspect enough code, tests, project guidance, glossary, and architectural decisions to understand the real work and use the project's language.

Understand the problem before dividing it. Look for small prefactors that simplify the feature, but don't turn speculative cleanup into required scope.

## Break down the work

Order tickets the way a good developer would hand-code the change. Backend and frontend tickets often suit larger work; a vertical slice may suit a small, cohesive feature. Use judgment, not a formula.

Keep each ticket small enough for a fresh agent to finish in one context window, while leaving enough related work together to make sense. Prefer a coherent coding and review sequence over maximizing theoretical parallelism.

Every ticket declares only what truly blocks it. Don't invent dependencies because tickets appear in order.

For wide mechanical changes that cannot land safely at once, use expand–migrate–contract: add the compatible form, migrate callers in sensible batches, then remove the old form.

## Draft together

Write the full breakdown to `.scratch/<feature-slug>/tickets.md`. Keep every ticket there while drafting so I can annotate and rearrange the plan as a whole.

Keep that file as the source of truth. Preserve my edits and incorporate my comments there. Don't paste the whole breakdown into chat after each revision; summarize the change and point back to the file.

The draft is working material. Don't stage or commit it unless I ask.

## Write and publish

Each ticket should plainly explain:

- the problem and enough context to understand why the work matters;
- how we think it should be fixed, including decisions already made;
- the tests that should prove it works, with relevant prior art when useful;
- unknowns, edge cases, or gotchas worth knowing before starting;
- its real blockers, if any.

Put a decision in the first ticket where it matters so the document reads chronologically. Don't add a top-level "shared decisions" section or make me jump away from the work to understand it.

Use short sections or bullets when useful, but don't inflate a simple ticket into a template exercise. Tests are part of the work, not an acceptance-criteria footnote. Leave out unknowns or gotchas when none exist.

Include concrete implementation context when it helps the next developer find their footing, but avoid brittle instructions that pretend the ticket author has already written the code. A small prototype-derived state machine, schema, reducer, or type shape is fine when it records a decision better than prose.

Don't publish until I approve. Use the destination I name or the project's documented tracker. Usually that's Jira for work, github or just local scratch for other stuff (for Jira the tickets are usually stories and they should be tied to the parent epic). When publishing individual issues, create blockers first so later tickets can reference them, and use native dependency relationships when available. Apply the project's normal "ready" triage.

If the tickets stay local, the approved `tickets.md` is the final artifact.

Finish by reporting what was created and which ticket or tickets should be picked up first.
