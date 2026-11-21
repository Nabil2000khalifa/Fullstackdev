# Frontend engineering reference

## Discovery

Identify the framework, router, styling system, design tokens, supported browsers, viewport assumptions, and existing component conventions. Find the entry points for every user workflow in scope.

## Responsive and visual audit

Check representative mobile, tablet, laptop, and desktop viewports. Measure container width, overflow, spacing, alignment, wrapping, line height, and fixed or absolute elements. Inspect stacking contexts and z-index when elements overlap. Test loading, empty, error, success, and disabled states. Prefer existing tokens and components over one-off values.

Check for:

- horizontal scrolling and clipped content;
- text or controls colliding at narrow widths;
- inconsistent typography, contrast, focus indicators, and heading hierarchy;
- dead links, buttons without handlers, incorrect routes, and broken form feedback;
- missing labels, semantic landmarks, keyboard traps, and incorrect ARIA;
- images without useful alternatives and layout shift from missing dimensions.

Use browser automation when available. Capture viewport, route, action, expected result, actual result, and evidence. Do not infer cross-browser behavior from one browser.

## Remediation

Fix the smallest responsible component or token. Preserve interaction semantics, keyboard behavior, and responsive breakpoints. Add a focused regression test for behavior that was broken. Recheck neighboring states and all affected routes.
