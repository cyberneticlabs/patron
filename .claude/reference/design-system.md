---
name: Patron Design System — Implementation Reference
description: How the Patron design system is wired into Tailwind v4 / Nuxt UI v4. Read before writing any styled component or page.
---

# Patron Design System

Source of truth for visual tokens: `.claude/reference/DESIGN.md`
Implementation lives in: `src/layers/core/`

---

## Color Tokens

Defined in `src/layers/core/app/assets/css/main.css` via Tailwind v4 `@theme`.

### Tailwind utility classes

| Intent | Class | Value |
|--------|-------|-------|
| Brand primary | `text-primary-400` / `bg-primary-400` | `#5af0b3` neon green |
| Muted primary | `text-primary-500` | `#45dfa4` |
| Page background | `bg-neutral-900` | `#131313` |
| Card surface | `bg-neutral-700` | `#201f1f` |
| Elevated card | `bg-neutral-600` | `#2a2a2a` |
| Sidebar/secondary container | `bg-neutral-800` | `#1c1b1b` |
| Body text | `text-neutral-50` | `#e5e2e1` |
| Muted text | `text-neutral-100` | `#bbcac0` |
| Border / divider | `border-neutral-300` | `#3c4a42` |
| Subtle border | `border-white/10` | `rgba(255,255,255,0.1)` |

### Nuxt UI component colors

`app.config.ts` maps:
- `primary` → `--color-primary-*` (neon green scale)
- `neutral` → `--color-neutral-*` (dark gray scale)

Use `color="primary"` on `UButton`, `UBadge`, etc. for neon green. Use `color="neutral"` for ghost/muted variants.

### Semantic `--patron-*` vars (for custom CSS only)

Use `var(--patron-secondary)` (`#cebdff`) for purple accents, `var(--patron-tertiary)` (`#ffd16d`) for warnings/cost metrics. Full list in `main.css`.

---

## Typography

Fonts loaded via Google Fonts in `main.css`.

| Scale | Font | Size | Weight | Usage |
|-------|------|------|--------|-------|
| Headline LG | Geist | 32px | 600 | `text-4xl font-semibold` |
| Headline MD | Geist | 24px | 600 | `text-2xl font-semibold` |
| Body LG | Geist | 16px | 400 | `text-base` (default) |
| Body MD | Geist | 14px | 400 | `text-sm` |
| Label Caps | Geist | 12px | 600 | `text-xs font-semibold uppercase tracking-widest` |
| Mono SM | JetBrains Mono | 13px | 400 | `font-mono text-[13px]` — agent names, file paths, code |

Tailwind classes use `font-sans` (Geist) by default. Use `font-mono` for technical/code content.

---

## Spacing & Layout

- **Base unit**: 4px → Tailwind `p-1 = 4px`, `p-6 = 24px` (card gutter), `p-8 = 32px` (desktop margin)
- **Sidebar width**: `w-[260px]`
- **Mobile margin**: `px-4` (16px)
- **Desktop margin**: `px-8` (32px) at `xl:` breakpoint

---

## Border Radius

| Token | Value | Usage |
|-------|-------|-------|
| `rounded` | 0.5rem | Buttons, inputs |
| `rounded-lg` | 1rem | Cards, containers |
| `rounded-full` | 9999px | Status pills, avatars |

---

## Elevation & Borders

No shadows. Depth via surface color tiers + borders.

Every card/container needs a 1px border:
```html
<div class="border border-white/10 rounded-lg bg-neutral-700 p-6">
```

Dividers between list items: `divide-y divide-white/5`

---

## Dark Mode

App is dark-only. `colorMode` is locked to `preference: 'dark'` in `src/layers/core/nuxt.config.ts`. No light mode variants needed — do not add `dark:` prefixes for color switching.

---

## Component Patterns

### Card
```html
<div class="border border-white/10 rounded-lg bg-neutral-700 p-6">
```

### Status pill — Active/Running
```html
<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold bg-primary-400/10 text-primary-400 border border-primary-400">
  Running
</span>
```

### Status pill — Warning
```html
<span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold" style="background:color-mix(in srgb,var(--patron-tertiary) 10%,transparent);color:var(--patron-tertiary);border:1px solid var(--patron-tertiary)">
  Waiting
</span>
```

### Input focus ring (secondary purple)
```html
<UInput class="focus:ring-2 focus:ring-[var(--patron-secondary)]" />
```

### Label caps
```html
<p class="text-xs font-semibold uppercase tracking-widest text-neutral-100">At a Glance</p>
```
