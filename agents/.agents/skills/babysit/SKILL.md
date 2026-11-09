---
name: babysit
description: Use to watch a PR through review bots and CI, fixing what's real, until it's ready to merge.
disable-model-invocation: true
---

# Babysit

Get this PR from "open" to "ready to merge" without me having to watch it. Most of the noise comes from review bots, and they're wrong often enough that every finding needs a real look before you change any code.

## Waiting

Call `watch_pull_request` and end your turn. T3 Code wakes you when checks finish, someone comments, or the branch conflicts. Don't poll, sleep, or run your own watcher. If you're in a harness without `watch_pull_request`, use its own wake-up mechanism (a background monitor or scheduled wakeup), never a sleep loop. If it has neither, tell me.

When you wake up and nothing new needs action, stay quiet and end the turn again.

## Each wake-up

- **Review findings:** Check each one against the actual source before you touch anything. If it's real, fix it. If it's a false positive, reply on the thread with a short written reason and resolve it. Don't silently ignore anything.
- **Failing checks:** Read the logs and fix the cause. If the failure is flaky or unrelated to this PR, rerun it once. If it keeps failing, tell me.
- **Conflicts:** Bring in the base branch the same way the repo's history does. Use `--force-with-lease` only on a branch that belongs to this PR.
- **Human comments:** Handle them like bot findings, but if one asks for a judgment call that's mine to make, ask me.

Stay inside the PR's original goal. Review feedback that would grow the scope (refactors, "while you're here" cleanups, new features) gets a reply saying it's out of scope, not a change. Mention it to me if it seems worth a follow-up.

Push fixes as normal commits that follow the repo's commit style. Each push restarts the bots, so batch the fixes from one wake-up into a single push.

## Done

The PR is ready when, on the latest commit, all required checks are green, the bots have finished, there are no unresolved review threads, and GitHub reports it mergeable. Don't merge it. When to merge and deploy is my call. If it's only waiting on a human approval, that still counts as ready.

Then call `unwatch_pull_request` and send me one short summary: what you fixed, what you dismissed and why, and anything still waiting on a person.
