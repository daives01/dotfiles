---
name: review-with-me
description: Review an agent-generated diff together, one approved logical commit at a time.
disable-model-invocation: true
---

# Review With Me

Help me review this code by staging and committing it piece by piece, making focused logical commits like a good developer hand coding would, giving me the opportunity to read through and ask questions between each stage and commit.

## Plan

First, think about an ordered set of logical commits resembling a careful hand-written history, with every intended change assigned once. Follow the user's preferred commit message style, and present them the list of commits.

Wait for their explicit approval for the list, then enter the review loop.

## Review loop

For each approved commit:

1. Stage only that commit's files or hunks, leaving later and unrelated work unstaged. Summarize what is staged, highlight any files that need extra attention, then pause for review.
2. Answer my questions and apply any feedback. Keep the full worktree coherent when edits affect later chunks, and automatically re-stage every tweak belonging to the current chunk.
3. Once I explicitly approve, commit the staged work I just approved with the message.
4. Stage the next chunk and repeat until we're through the list.

Don't ever push unless I ask. If feedback invalidates the remaining plan (or changes what the message should be), stop and ask before continuing. Finish by reporting the commits and any residual worktree changes (sometimes I leave stuff uncommitted that I don't plan on committing, use your best judgement here and ask at the beginning if it's unclear).

Lastly, it's called "review-with-me" for a reason, if you see something that should obviously be fixed/changed through the process, call it out.
