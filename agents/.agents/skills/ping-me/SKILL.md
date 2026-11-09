---
name: ping-me
description: use to message me you need my attention, not for normal threads, but for long running jobs, monitoring, or if I asked you to
---

# Ping Me

Send me a Slack DM that buzzes my phone, for when I'm not watching the thread. Normal work doesn't need this, only if I asked for it, if it's a long running job and blocked on something I wouldn't expect, or if you're monitoring something, etc.

```sh
~/.agents/skills/ping-me/ping-me.sh "message"
```

It prints `{"ok":true}` on success. The webhook URL is in my Keychain (`ping-me-slack-webhook`); never print or copy it. If the lookup fails, tell me in the thread.

Write it like a quick message from a coworker: what you're working on, then what happened or what you need. For example:

- "I'm watching the pablo deploy, error rate tripled since 14:05. Want me to roll back?"
- "The html-render-engines backfill finished, 12,400 rows updated and no errors."
- "I'm babysitting the rendering-v2 PR, CI keeps failing on a test I don't think we touched. Can you take a look?"
- "I'm running the prod migration dry run, it wants AWS 2FA. Can you run `refresh-all-aws-creds`?"

Ping once per issue, again only if it gets meaningfully worse. Slack replies don't reach you, so keep questions in the thread.
