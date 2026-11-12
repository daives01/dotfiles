---
name: full-stop
description: Use when I want a change taken from code to a reviewed, proven draft PR without me in the loop until it's ready to look at.
disable-model-invocation: true
---

# Full Stop

I've already decided what the change is. Take it all the way to a draft PR that's been proven, reviewed twice, and is ready for me to look at, then ping me with the link. I'm not watching this thread, so nothing you write along the way gets read until you're done.

## What you can do without me

Commit, push, rebase, fix conflicts, and use `--force-with-lease` on this task's own branch. Run whatever local checks you need to prove the change. Make reasonable calls on details yourself and list them for me at the end.

Never merge, enable auto-merge, mark the PR ready, touch production or shared data, or push to any branch that isn't this task's. Those are mine.

## Make the change

Work in a new worktree off an up-to-date `main`, on a branch named for the ticket (like `REN-404`), so you don't touch a checkout I or another thread might be using. Make the change the way we discussed it, and keep it as small as it can be while still working. If something about the change itself turns out to be wrong, ask me instead of improvising a different design.

## Prove it

Every change in the diff needs evidence you saw yourself in this session, not just "types pass." The best proof reproduces the original problem, then shows the same reproduction passing after the fix. Run what CI runs (types, lint, tests), and add one focused test when the behavior has none and the repo has a setup for it. For rendering changes, render it and look at it. Mocked tests don't prove a PDF came out right.

If you can't find a way to prove the change, that's a reason to ask me, not to ship it anyway.

## Get a second opinion

Before anything is public, get a review from a fresh agent on the **latest Fable** model. Give it the diff and the goal, not your reasoning, so its read isn't anchored on yours. Check each finding against the source. Fix the real ones with the smallest change that addresses them, and prove those fixes too. Drop the rest, but remember them for the summary.

## Open the PR

Rebase onto the latest `main`, then open a **draft** PR. Say how you proved the change in one line, in the Testing section if there is one. Draft is on purpose: it's not ready for humans until the bots are done.

## Babysit it

Follow `babysit` until the agent PR reviewer (Qodo at work) has posted its review on the latest commit and CI is settled. If a push triggers a fresh review pass, wait for that one too. If the repo has no agent reviewer, just wait on CI. Prove any fix before you push it.

Don't end your turn while checks or bots are pending without a watch in place, or the work just stops. Nobody is going to prompt you again.

## Asking me

A question in a normal message goes unseen and makes the thread look finished. When you're truly blocked, unwatch the PR, then use the harness's question tool (`AskUserQuestion` in Claude Code, `request_user_input` in Codex) with everything I need in the question itself: the PR link, what's blocking, and the options with your pick first. `ping-me` so I know to look.

Only ask when you can't continue on your own: you can't prove the change, the design looks wrong, the PR can't get to a clean state, the next step is outside what's allowed above, or the goal is ambiguous in a way that changes the result.

## Hand it off

You're done when, on the latest commit, your proof covers the whole diff, the agent review is finished with nothing unresolved, checks are green (or failing for a reason you've explained), and the branch is up to date with `main` and mergeable.

Unwatch the PR, then `ping-me` with the link. In the thread, give me a short summary: how you proved it, what Fable and the agent reviewer caught, what you fixed, what you dismissed and why, and any calls you made on my behalf. Leave it as a draft.
