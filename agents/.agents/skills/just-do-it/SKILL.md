---
name: just-do-it
description: Record a small unscheduled fix in Jira and start the work immediately.
disable-model-invocation: true
---

# Just Do It

This is for work we didn't put in the sprint: small, still worth a Jira record, and I want you to start it now. Make the ticket, branch, then begin. Don't plan.

If this isn't actually small (more than a couple points of real work, unclear product calls, a new slice we should schedule), say so and stop. Ask one or two questions only when you can't start without the answer.

## Ticket

Use the project's Jira skill (in trade-engine: `.agents/skills/jira`). Make a **Task**, not a Story.

- Assign it to **me**.
- Give it **1** point if it's tiny, **2** if there's a bit of hunting. Don't ask me to estimate.
- Put it on **my current sprint**: the active sprint already on my other open issues, or the active sprint on my team's board. If more than one active sprint could apply, ask.
- Fill metadata you can actually tell (component, for example). Don't invent an epic or labels.
- Move it to **In Progress** as soon as it exists.

Tell me the key and URL.

## Branch

We branch off `dev`. If you aren't on `dev`, stop and ask. Otherwise create a new branch named for the ticket key, like `TRD-123`, then start the work. Don't wait for a "go".

## After

Unless I already said what comes next (file the PR, review with me, etc.), finish the work and wait for me to review and confirm next steps.
