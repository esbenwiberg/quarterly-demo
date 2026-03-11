# Dark Mode Audit — theme.css & styles.css

## Summary

All CSS custom properties in `docs/theme.css` have been catalogued below.
`docs/styles.css` has been verified to use only `var(--*)` references for
color — with one minor hardcoded value noted. No component-level overrides
will be needed when swapping to a dark palette in Milestone 2.

---

## CSS Custom Properties in `docs/theme.css`

### Brand Colors

| Variable               | Current (Light) Value |
|------------------------|-----------------------|
| `--color-primary`      | `#1a5276`             |
| `--color-primary-light`| `#2980b9`             |
| `--color-primary-dark` | `#0e3d5c`             |
| `--color-accent`       | `#f39c12`             |
| `--color-accent-light` | `#f7b731`             |

### Status Colors

| Variable                 | Current (Light) Value |
|--------------------------|-----------------------|
| `--color-success`        | `#27ae60`             |
| `--color-success-bg`     | `#d5f5e3`             |
| `--color-success-border` | `#a9dfbf`             |
| `--color-success-text`   | `#1e8449`             |
| `--color-warning`        | `#f39c12`             |
| `--color-warning-bg`     | `#fef9e7`             |
| `--color-warning-border` | `#f9e79f`             |
| `--color-warning-text`   | `#9a7d0a`             |
| `--color-danger`         | `#e74c3c`             |
| `--color-danger-bg`      | `#fdedec`             |
| `--color-danger-border`  | `#f5b7b1`             |
| `--color-danger-text`    | `#922b21`             |
| `--color-info`           | `#3498db`             |
| `--color-info-bg`        | `#d6eaf8`             |
| `--color-info-border`    | `#aed6f1`             |
| `--color-info-text`      | `#1a5276`             |

### Neutral / Surface Colors

| Variable                | Current (Light) Value |
|-------------------------|-----------------------|
| `--color-bg`            | `#f0f2f5`             |
| `--color-surface`       | `#ffffff`             |
| `--color-surface-alt`   | `#f8f9fa`             |
| `--color-border`        | `#dee2e6`             |
| `--color-border-light`  | `#e9ecef`             |
| `--color-text`          | `#2c3e50`             |
| `--color-text-secondary`| `#6c757d`             |
| `--color-text-muted`    | `#adb5bd`             |

### Semantic / Structural Tokens (colors only)

| Variable                  | Current (Light) Value       |
|---------------------------|-----------------------------|
| `--header-bg`             | `var(--color-primary)`      |
| `--header-text`           | `#ffffff`                   |
| `--header-accent`         | `var(--color-accent)`       |
| `--sidebar-bg`            | `#2c3e50`                   |
| `--sidebar-text`          | `#bdc3c7`                   |
| `--sidebar-active-bg`     | `var(--color-primary)`      |
| `--sidebar-active-text`   | `#ffffff`                   |
| `--sidebar-hover-bg`      | `#34495e`                   |

### Non-Color Variables (unchanged for dark mode)

- **Typography**: `--font-family`, `--font-family-mono`, `--font-size-xs/sm/base/lg/xl/2xl/3xl`
- **Spacing**: `--space-xs/sm/md/lg/xl`
- **Radii**: `--radius-sm/md/lg/full`
- **Shadows**: `--shadow-sm/md/lg` (opacity-based, naturally adapt to dark backgrounds)
- **Sidebar layout**: `--sidebar-width`
- **Transitions**: `--transition-fast/base`

---

## `docs/styles.css` — Color Usage Verification

**Result: ✅ PASS — all color references go through CSS variables.**

Every color-bearing property in `styles.css` uses `var(--*)`. The only
literal color values found are:

| Location | Value | Notes |
|---|---|---|
| `.sidebar` border | `rgba(0, 0, 0, 0.1)` | Semi-transparent overlay — works in dark mode |
| `.header-avatar` border | `rgba(255, 255, 255, 0.3)` | White-alpha ring on dark header — works in dark mode |
| `.sidebar-link:hover` color | `#ecf0f1` | Hardcoded light-grey; should be extracted to a variable in Milestone 2 |

No badge colors, surface fills, text colors, border colors, or status
indicator colors are hardcoded. All cascade entirely from `theme.css`.

---

## Dark Mode Mapping Plan (for Milestone 2)

The following variables require new dark-palette values:

### Surfaces & Backgrounds
- `--color-bg` → deep dark background (e.g. `#0d1117`)
- `--color-surface` → elevated surface (e.g. `#161b22`)
- `--color-surface-alt` → slightly lighter surface (e.g. `#1c2128`)

### Borders
- `--color-border` → subtle dark border (e.g. `#30363d`)
- `--color-border-light` → very subtle dark border (e.g. `#21262d`)

### Text
- `--color-text` → primary text on dark (e.g. `#e6edf3`)
- `--color-text-secondary` → muted text (e.g. `#8b949e`)
- `--color-text-muted` → very muted (e.g. `#484f58`)

### Brand Colors (lightened for dark-bg contrast)
- `--color-primary` → `#58a6ff`
- `--color-primary-light` → `#79c0ff`
- `--color-primary-dark` → `#1f6feb`

### Status Badge Backgrounds (darkened for dark-bg)
- Success bg/border/text → dark green tones
- Warning bg/border/text → dark amber tones
- Danger bg/border/text → dark red tones
- Info bg/border/text → dark blue tones

### Header & Sidebar
- `--header-bg` → remains `var(--color-primary)` (or a custom dark header)
- `--sidebar-bg` → near-black (e.g. `#0d1117`)
- `--sidebar-hover-bg` → slightly lighter (e.g. `#1c2128`)

### Hardcoded value to fix
- Extract `.sidebar-link:hover` `#ecf0f1` into a new variable
  `--sidebar-hover-text` and define it in `theme.css`.
