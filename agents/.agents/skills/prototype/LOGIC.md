# Logic Prototype

Use a logic prototype when the uncertainty is about behavior: state transitions, business rules, an API shape, or whether a data model can represent the awkward cases.

## Make the model tangible

Represent the behavior in the smallest clear form. A pure function, reducer, state machine, or small module is usually enough. Keep it separate from whatever drives the prototype so the rules are easy to inspect and change.

Use domain language for states and actions. Show the full relevant state after each action, including why an action was rejected when legality is part of the question.

Choose a few scenarios that put pressure on the idea:

- the ordinary path;
- the edge case that made us uncertain;
- an invalid or surprising sequence, when relevant.

Add free play when the order of actions is part of what we need to explore. Add guided scenarios when repeatability or sharing with a non-developer matters. Neither is required when a smaller driver answers the question.

## Choose the shell

Prefer a single self-contained HTML file when the prototype needs to be shared or explored by clicking through it. Keep the interface simple: explain the question, expose the available actions, and render the state readably rather than dumping unexplained JSON.

When the surrounding project already provides a faster useful shell—a REPL, test harness, story, route, or command—use that instead. The shell exists to exercise the model, not to become another design project.

The interesting result is where the model feels wrong: an impossible state becomes reachable, a valid action has no representation, or two people expected different outcomes. Make those moments easy to see.
