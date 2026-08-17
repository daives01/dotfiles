---
name: to-skill
description: Turn a process, conversation, or idea into a reusable skill.
disable-model-invocation: true
---

# To Skill

Turn what I give you into a small, useful skill: codify a process we worked through, edit an existing skill, or shape a rough idea.

## Understand the job

Start with the current conversation and any artifacts I pointed to. Separate the reusable process from details that only mattered this time.

If this comes from work we just did, pay attention to where I corrected you, made a choice, or explained what I care about. Those moments matter more than a generic description.

Inspect nearby skills before writing. This `to-skill` and `review-with-me` are the default guide for my voice: simple language, direct rules, and enough trust in the agent to leave obvious reasoning unstated. When rewriting an existing skill, preserve useful behavior without preserving its vocabulary or structure by default.

Ask only about gaps that would materially change the skill. Otherwise make a reasonable draft.

## Write the skill

Point a capable agent toward my goal instead of replacing its judgment with rules. Explain why the skill matters and what good looks like, then give it the least process needed. Prefer prose; use bullets when they scan better.

Write from my perspective: `I`, `me`, and `my` for me, and `you` for the agent. Never call me "the user." The skill should read like instructions I wrote.

Prefer one `SKILL.md` under 100 lines. Trust obvious reasoning, keep each idea in one place, and add completion criteria only where the agent might stop early. The description is one sentence answering "when do I use this?" Skills are manual by default; say if one should be discoverable.

Unless the skill is obviously repo-specific, create it in this dotfiles repo's shared skills directory so both Codex and Cursor can use it. Put a repo-specific skill in that repo's `.agents/skills`; prefer that shared standard over `.codex` or `.cursor`.

Most skills only need `SKILL.md`. Add scripts for repeated deterministic work and references only for conditional or bulky material. Link to sources of truth instead of copying facts that drift. Mirror the frontmatter in `agents/openai.yaml`: title-cased display name, matching description, and implicit invocation disabled for manual skills. Skip other metadata, README files, and ceremony unless I ask.

## Review and finish

After writing the draft, point me to the file and briefly call out meaningful choices such as model invocation or extra files. Expect feedback and changes; don't repeat the whole skill in chat.

Treat the first version as a working draft. Real use is the best test: when a skill produces weak or surprising behavior, fix the smallest instruction responsible instead of expanding the whole document.
