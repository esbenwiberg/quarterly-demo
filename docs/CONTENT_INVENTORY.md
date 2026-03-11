# Contoso Ltd — Site Content Inventory
> Milestone 1 audit: every data element, section, table, link, and interactive
> component currently present in docs/index.html + docs/styles.css.
> This file guides Milestone 2 (full redesign with Tailwind CSS).

---

## 1. Page Identity

| Field | Value |
|---|---|
| `<title>` | Contoso Ltd - Project Server 2005 |
| Stylesheet | `styles.css` (retro 2000s enterprise, Verdana/Tahoma, beige/navy palette) |
| Fonts in use | Verdana, Tahoma, Arial, "Trebuchet MS", "Courier New" |
| Body background | `#e8e8d8` (warm grey-beige) |

---

## 2. Top Bar (`<div class="topbar">`)

| Element | Detail |
|---|---|
| Logo | `logo.gif` — 24×24, yellow CSS fallback box |
| Title text | **Contoso Ltd — Project Server** |
| User info | `Logged in as: CONTOSO\ewiberg` |
| User links | My Settings · Sign Out |
| CSS | `background: linear-gradient(#003a7a → #002255)`, gold `#f0c040` border-bottom |

---

## 3. Navigation Bar (`<div class="navbar">`)

Six tab-style nav items (table cells). Active = "Project Center".

| Tab | State |
|---|---|
| Project Center | **Active** (highlighted) |
| Resource Center | Default |
| Status Reports | Default |
| Documents | Default |
| Issues & Risks | Default |
| Admin | Default |

CSS: blue gradient navbar, active tab gets `#f5f5ec` background.

---

## 4. Toolbar (`<div class="toolbar">`)

Button-style text links (no real actions in this static demo):

- [New Project]
- [Edit]
- [Delete]
- separator `|`
- [Refresh]
- [Print View]
- separator `|`
- [Export to Excel]
- [Filter: All Projects ▼]

---

## 5. Sidebar (`<td class="sidebar">` — 180 px wide)

### Header
- Text: **Quick Launch**

### Section: Views
- ▶ Summary
- ▶ Gantt Chart
- ▶ Resource Usage
- ▶ Cost Tracking

### Section: My Work
- ▶ My Tasks
- ▶ My Timesheets
- ▶ Status Reports

### Section: Reports
- ▶ Dashboard
- ▶ Portfolio Analysis
- ▶ Resource Availability

### Footer
- `recycle.gif` icon + Recycle Bin link

---

## 6. Main Content Area

### 6a. Page Title & Breadcrumb
- Title: **Project Center — All Projects** (with `folder.gif` icon)
- Breadcrumb: `Home > Project Center > All Projects`

---

### 6b. Summary / KPI Boxes (5 boxes, full-width row)

| Label | Value | Colour |
|---|---|---|
| Total Projects | **8** | neutral |
| On Track | **5** | green (`#228b22`) |
| At Risk | **2** | amber (`#cc8800`) |
| Critical | **1** | red (`#cc0000`) |
| Budget Used | **67%** | neutral |

---

### 6c. Main Project Data Table

**Columns:** ☐ | ● | Project Name ▼ | Owner | Start Date | Finish Date | % Complete | Status | Budget | Gantt

**8 rows of project data:**

| # | Project Name | Owner | Start | Finish | % | Status | Budget | Gantt colour |
|---|---|---|---|---|---|---|---|---|
| 1 | Q1 2026 Platform Modernization | E. Wiberg | 01/06/2026 | 03/28/2026 | 72% | On Track (green) | $245,000 | green |
| 2 | API Gateway Migration | K. Jensen | 01/13/2026 | 02/28/2026 | 100% | Complete (green) | $89,000 | blue |
| 3 | Customer Portal Redesign | M. Andersen | 01/20/2026 | 03/15/2026 | 45% | At Risk (amber) | $178,000 | amber |
| 4 | Data Warehouse ETL Pipeline | S. Larsen | 02/03/2026 | 04/10/2026 | 30% | On Track (green) | $156,000 | green |
| 5 | Legacy CRM Data Migration | P. Nielsen | 12/01/2025 | 02/14/2026 | 58% | OVERDUE (red, blinking) | $320,000 | red |
| 6 | CI/CD Pipeline Overhaul | T. Holm | 01/27/2026 | 03/06/2026 | 88% | On Track (green) | $67,000 | green |
| 7 | Mobile App v3.0 | L. Poulsen | 02/10/2026 | 05/22/2026 | 15% | At Risk (amber) | $410,000 | amber |
| 8 | Security Audit & Compliance | A. Krogh | 01/06/2026 | 02/21/2026 | 95% | On Track (green) | $52,000 | blue |

**Progress bar colours:**
- Default (blue gradient) — On Track / Complete
- Amber gradient — At Risk
- Red gradient — OVERDUE/Critical

**Gantt bar styles (inline `margin-left` / `width` percentages):**
| Row | margin-left | width |
|---|---|---|
| 1 (green) | 10% | 62% |
| 2 (blue) | 15% | 35% |
| 3 (amber) | 20% | 45% |
| 4 (green) | 30% | 50% |
| 5 (red) | 0% | 55% |
| 6 (green) | 22% | 30% |
| 7 (amber) | 35% | 60% |
| 8 (blue) | 10% | 35% |

**Table footer text:** `Showing 1 - 8 of 8 projects`  
**Pagination controls:** [<< First] [< Prev] **1** [Next >] [Last >>] (static, no real pages)

---

### 6d. Resource Allocation Summary Table

Section heading: **Resource Allocation Summary** (with `chart.gif` icon)

**Columns:** Resource | Department | Allocated Hours | Available Hours | Utilization

**6 rows:**

| Resource | Department | Alloc Hrs | Avail Hrs | Util % | Colour class |
|---|---|---|---|---|---|
| E. Wiberg | Engineering | 148 | 160 | 93% | `util-high` (amber) |
| K. Jensen | Engineering | 120 | 160 | 75% | `util-med` (green) |
| M. Andersen | Design | 155 | 160 | 97% | `util-over` (red) |
| S. Larsen | Data | 136 | 160 | 85% | `util-high` (amber) |
| P. Nielsen | Engineering | 160 | 160 | 100% | `util-over` (red) |
| T. Holm | DevOps | 112 | 160 | 70% | `util-med` (green) |

Utilisation colour thresholds:
- `util-med` (≤75%) → green `#228b22`
- `util-high` (76–95%) → amber `#cc8800`
- `util-over` (>95%) → red `#cc0000`

---

### 6e. Page Footer

- Copyright: `Microsoft Office Project Server 2005 © Microsoft Corporation. All rights reserved.`
- Links: Privacy Statement · Terms of Use · Contact Admin

---

## 7. CSS Architecture Summary

### Layout approach
- 100%-width `<table>` for everything (sidebar + content column split)
- No flexbox or grid in the original

### Key CSS classes (to be replaced by Tailwind equivalents in M2)

| Original class | Purpose | Tailwind M2 equivalent direction |
|---|---|---|
| `.topbar` | Top header bar | `bg-slate-900 border-b border-indigo-500` |
| `.navbar` | Tab navigation | `bg-slate-800` tabs |
| `.toolbar` | Action button strip | Icon-button row inside header |
| `.sidebar` | Left nav panel | Fixed `w-64` side panel |
| `.sidebar-link` | Nav links | Hover highlight links |
| `.summary-box` | KPI card | Glass-morphism stat card |
| `.data-table` | Project/resource grid | Styled `<table>` or card list |
| `.progress-fill` | Progress bar fill | Tailwind `bg-indigo-500` div bar |
| `.status-on-track` | Green badge | `bg-emerald-900/50 text-emerald-400` |
| `.status-at-risk` | Amber badge | `bg-amber-900/50 text-amber-400` |
| `.status-critical` | Red blinking badge | `bg-red-900/50 text-red-400 animate-pulse` |
| `.gantt-bar` | Mini Gantt bar | Coloured div with rounded corners |
| `.util-med/high/over` | Utilisation text colour | Tailwind colour utilities |
| `.indicator` | Status dot | Rounded full div with colour |
| `.page-footer` | Bottom copyright bar | `border-t border-slate-700` footer |

### Interactive components
- Checkboxes (one per row + header select-all) — keep functional in M2
- Sortable column headers (anchor tags, currently static)
- Filter dropdown (static text, M2 can add a `<select>`)
- Nav tab highlighting (active state)

---

## 8. Assets Referenced (missing / placeholder)

| File | Used for | M2 plan |
|---|---|---|
| `logo.gif` | Company logo in topbar | Replace with inline SVG or emoji icon |
| `folder.gif` | Page title icon | Replace with SVG icon |
| `chart.gif` | Section title icon | Replace with SVG icon |
| `recycle.gif` | Sidebar footer icon | Replace with SVG icon |

All four GIF files are absent from `docs/` — the CSS already uses coloured box fallbacks.
In M2, inline SVG icons (Heroicons style) will replace all four references entirely.

---

## 9. Data Preservation Checklist for M2

All of the following **must** appear in the redesigned page:

- [x] Page title: "Contoso Ltd — Project Server" (brand)
- [x] Logged-in user: `CONTOSO\ewiberg`
- [x] Top-bar user links: My Settings, Sign Out
- [x] 6 navigation tabs (Project Center active)
- [x] Toolbar actions: New Project, Edit, Delete, Refresh, Print View, Export to Excel, Filter
- [x] Sidebar sections: Views (4 links), My Work (3 links), Reports (3 links), Recycle Bin
- [x] KPI row: 8 total, 5 on-track, 2 at-risk, 1 critical, 67% budget used
- [x] All 8 project rows with all column data (name, owner, dates, %, status, budget, Gantt)
- [x] Progress bars with correct percentages and colours
- [x] Status badges: On Track / At Risk / OVERDUE / Complete
- [x] Gantt mini-bars with correct relative offsets and widths
- [x] "Showing 1 - 8 of 8 projects" + pagination controls
- [x] Resource Allocation table (6 rows, all columns, correct utilisation colours)
- [x] Page footer: copyright text + 3 footer links

---

## 10. M2 Design Decisions (pre-planned)

- **Framework:** Tailwind CSS v3 via CDN (Play CDN) — no build step
- **Colour palette:**
  - Background: `slate-950` / `slate-900`
  - Cards: `slate-800/50` with `backdrop-blur` (glass-morphism)
  - Accent: `indigo-500` / `violet-500`
  - Success: `emerald-400`
  - Warning: `amber-400`
  - Danger: `red-400`
  - Text primary: `slate-100`
  - Text secondary: `slate-400`
- **Typography:** Inter (Google Fonts CDN)
- **Layout:** CSS Grid sidebar + main, Tailwind responsive breakpoints
- **Mobile:** sidebar collapses to hamburger menu on `md:` breakpoint
- **Icons:** Inline SVG (no external icon library needed)
- **No backend changes**, no `node_modules` additions, deploy pipeline untouched
