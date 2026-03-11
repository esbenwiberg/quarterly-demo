# Contoso Project Dashboard

A static HTML/CSS project management dashboard for Contoso Ltd.

## File structure

```
docs/
  index.html    — Dashboard page (semantic HTML, no framework)
  theme.css     — All CSS custom properties (colors, fonts, spacing, radii, shadows)
  styles.css    — Component styles (references variables from theme.css)
package.json    — Static file server (serve)
```

## How theming works

All visual properties are controlled by CSS custom properties in `docs/theme.css`.
The `docs/styles.css` file references these variables — it never hardcodes colors.

To change the theme, edit the values in `theme.css`. For example, to make the
primary color green, change `--color-primary: #1a5276` to `--color-primary: #27ae60`.

## How to add a new UI component

1. **New stat card**: Copy an existing `<div class="stat-card">` block in the `.stats-grid` section.
2. **New table section**: Copy an existing `<section class="card">` block with its nested `.table`.
3. **New badge variant**: Add a `.badge-<name>` class in `styles.css` following the existing badge pattern.
4. **New header element**: Add inside the `.header-actions` div in `index.html`.

## CSS class patterns

| Pattern | Usage |
|---------|-------|
| `.stat-card` | Summary metric card in the stats grid |
| `.card` + `.card-header` + `.card-title` | Content container with heading |
| `.table` inside `.table-wrapper` | Data table |
| `.badge` + `.badge-success/warning/danger/info` | Status badge |
| `.progress` + `.progress-bar` + `.progress-fill` | Progress indicator |
| `.util-ok/high/over` | Utilization percentage coloring |

## Commands

```bash
npm run dev      # Serve locally on port 3000
npm run build    # No-op (static site)
npm test         # No-op (static site)
```
