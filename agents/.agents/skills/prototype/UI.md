# UI Prototype

Use a UI prototype when the uncertainty is visual or interactive: layout, information hierarchy, density, navigation, or the primary affordance for a task.

## Compare real alternatives

Create a small set of meaningfully different variants. Three is a useful default; use fewer for a narrow decision and rarely more than five. Variants should disagree about structure or interaction, not merely color, spacing, or copy.

Give each variant a clear idea. If two converge on the same layout, make one take a genuinely different position rather than padding the set with another minor variation. Keep variant-specific structure independent enough that an early shared abstraction does not force them back together.

## Keep the surrounding context

Prototype inside the existing page or flow when one is available. Real navigation, data shape, controls, and density expose tradeoffs that an isolated mockup hides. Keep existing loading and authentication behavior outside the variants, and use realistic read-only data.

Create a separate prototype route only when the surface has no natural home. Follow the project's routing and styling conventions either way.

## Make comparison easy

Let me switch variants without rebuilding or editing code. For a web UI, a `?variant=` parameter is a good default because each option remains reloadable and shareable. Add a small, visually separate switcher when it makes comparison faster.

Keep the project's component library and visual language so feedback stays focused on the decision. The switcher and prototype scaffolding should remain obviously outside the proposed design.

Tell me what each variant is exploring, then let the rendered options do most of the explaining. Feedback may select one direction or combine parts of several; both are valid answers to the prototype.
