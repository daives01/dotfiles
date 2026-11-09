---
name: to-html
description: Show me what we're talking about as an HTML page, especially PDF render comparisons.
disable-model-invocation: true
---

# To HTML

Build an HTML page that helps me see whatever we're discussing: a comparison, a flow, a data shape, a before and after. Most of the time it's PDF renders (golden vs local vs staging, before vs after a fix, one library version vs another), and I want to eyeball whether something regressed.

The page doesn't need to be pretty. It needs to be readable, quick to scan, and honest about what produced each image.

## Where it goes

If the T3 Code `html_preview` and `html_render` tools are available, check the page with `html_preview`, then publish it with `html_render`. Reference local images by absolute path; T3 inlines them. Keep each image under 10 MiB and the whole page under 25 MiB (use JPGs if needed). The column is about 728px wide, so design for that. Use T3's theme vars (`var(--foreground)`, `var(--border)`, etc.) for chrome, and keep a white background behind PDF pages. Don't restate the page in your reply.

Otherwise write a self-contained `index.html` next to an `img/` folder (in the repo's `tmp/` if it has one, else `/tmp/<topic>/`) using relative paths, and `open` it in my browser.

## PDF comparisons

For each document, show the versions side by side and a diff. Label every column with where it came from (env, branch, flags, library version). Wrong flags or the wrong env are a common real cause of a difference, and I'll catch it faster if it's on the page. Mark pass/fail and show the similarity score when there is one.

Find existing artifacts before rendering anything new. In the rendering integration tests repo, runs leave rasters and diffs under `tmp/diff/<formfactor>/<id>/{raw,proof}/raster/...` and PDFs under `tmp/local` and `tmp/staging`, and `npm run compare` rasterizes and diffs two PDFs. Use what's there. If I just say "I ran the tests," find the latest run yourself.

Otherwise rasterize with `pdftoppm -png -r 144` (higher for close-ups). If there's no diff image, a CSS diff works fine: stack the two images and set `mix-blend-mode: difference` on the top one, so identical pixels go black. A toggle or slider between versions also helps with tiny shifts.

When there are more than a few documents, add a table of contents at the top: one row per document with its status and score, linking to its section, failures first. Long pages should still be easy to jump around.

## Keep it going

I usually iterate on the same page: "add the new fix," "replace these with the staging run," "compare all three." Update the existing page instead of starting a new one, and add columns when I add versions.

When I ask for a write-up instead of a grid, tell the story in order: the problem, the repro, the fix, the evidence.
