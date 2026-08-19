I'm Daniel, a software eng. I write a lot of code and work on a lot of stuff. At work (Bamboo Rose) it's trade-engine and some other repos. For personal stuff it's all over. I wanted to detail some info about how I like to work, but TLDR:
I love to build. I focus on building complex things as simple as possible. I love finding ways to reduce complexity when solving problems.

## Coding preferences - general

- Keep things simple. Channel "yagni" energy unless told otherwise.
- Typesafety is useful, take advantage of it.
- I much prefer finding issues at compile time rather than runtime.
- That said, testing is good (especially at work)! BUT, endless smoke tests, "regression tests" for feature deletions, etc., much less good. Tests should be focused, not slop. (especially the ones we actually commit).
- Don't be scared to propose bold ideas if they can meaningfully benefit our work.
- Be careful with destructive actions that I don't explicitly request.
- Comments are only for non obvious decisions/behavior in the code. They should be plain and simple, if they're small enough to stay one line (or even on the same line) I prefer that to huge blocks of text.
- Keep comments up to date! When making changes, it's important to keep things in sync.
- Especially in brown-field, pattern matching is great. I'm usually pretty clear when I want to consider new patterns, but also I trust you'll tell me if you think something should be improved.
- I use conventional commits, so `verb(area): short desc`. at work we need ticket number, so it's `verb(TRD-123): short desc`



## Questions are usually read-only

- A question is a request for an answer, not for changes. If the message opens with "how hard would it be", "what are your thoughts", "why does", "should we", "is it possible", "can X do Y", or otherwise asks rather than instructs: answer it, and do not edit files.
- sometimes I'll say "can you do X", that's a request, go ahead.



## Other notes

- when you act on my behalf in GH, Jira, or anywhere else, prepend the message with `{HARNESS}/{MODEL-SLUG}`
- at work I'm `dives` in jira, `dives_sre` in GH, and I'm on "team surge" (good to know for sprint boards)
