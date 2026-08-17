---
name: prototype
description: Build a throwaway prototype to answer an uncertain design or behavior question.
disable-model-invocation: true
---

# Prototype

Build the smallest thing that lets me feel out a decision before we commit to production code. A prototype answers one question; it is not an early version of the feature.

## Frame the question

Start by stating the uncertainty and what we expect to learn. Use the conversation and surrounding code to make a reasonable call, but ask if different interpretations would produce meaningfully different prototypes.

Choose the shape that matches the question:

- For business logic, state transitions, APIs, or data shape, follow [LOGIC.md](LOGIC.md).
- For layout, hierarchy, or interaction design, follow [UI.md](UI.md).

If both matter, identify the riskier uncertainty and prototype that first. Don't quietly combine two experiments into a small application.

## Keep it disposable

Put the prototype near the code it informs and name it so nobody can mistake it for production. Reuse the project's runtime, components, domain language, and realistic read-only data where that makes the result easier to judge.

Keep state in memory unless persistence is the question. Avoid real mutations, production services, migrations, new architecture, broad abstractions, tests, and defensive polish. Add only enough error handling and setup to make the experiment easy to run.

Make the relevant state or differences visible. Someone evaluating it should be able to tell what happened and connect that behavior back to the question without reading the code.

## Hand it over

Run the prototype yourself before presenting it. Give me the exact command, file, or URL and briefly explain what to try and what decision it is meant to inform. Treat my reactions as the result: update the prototype when another case or variation would clarify the same question.

## Capture the answer

Once the question is settled, record the decision and why. Implement the chosen behavior properly rather than promoting throwaway code unchanged.

Keep prototype artifacts out of the main branch unless I ask otherwise. If the prototype is useful as a primary source, preserve it on a clearly named throwaway branch and link it from the implementation issue; otherwise remove it after its decisions have been absorbed. Don't delete or move it without checking with me first.
