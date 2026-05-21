---
name: Patron Desing System
colors:
  surface: '#131313'
  surface-dim: '#131313'
  surface-bright: '#393939'
  surface-container-lowest: '#0e0e0e'
  surface-container-low: '#1c1b1b'
  surface-container: '#201f1f'
  surface-container-high: '#2a2a2a'
  surface-container-highest: '#353534'
  on-surface: '#e5e2e1'
  on-surface-variant: '#bbcac0'
  inverse-surface: '#e5e2e1'
  inverse-on-surface: '#313030'
  outline: '#85948b'
  outline-variant: '#3c4a42'
  surface-tint: '#45dfa4'
  primary: '#5af0b3'
  on-primary: '#003825'
  primary-container: '#34d399'
  on-primary-container: '#00563b'
  inverse-primary: '#006c4b'
  secondary: '#cebdff'
  on-secondary: '#381385'
  secondary-container: '#4f319c'
  on-secondary-container: '#bea8ff'
  tertiary: '#ffd16d'
  on-tertiary: '#402d00'
  tertiary-container: '#ecb210'
  on-tertiary-container: '#614700'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#68fcbf'
  primary-fixed-dim: '#45dfa4'
  on-primary-fixed: '#002114'
  on-primary-fixed-variant: '#005137'
  secondary-fixed: '#e8ddff'
  secondary-fixed-dim: '#cebdff'
  on-secondary-fixed: '#21005e'
  on-secondary-fixed-variant: '#4f319c'
  tertiary-fixed: '#ffdf9f'
  tertiary-fixed-dim: '#f9bd22'
  on-tertiary-fixed: '#261a00'
  on-tertiary-fixed-variant: '#5c4300'
  background: '#131313'
  on-background: '#e5e2e1'
  surface-variant: '#353534'
typography:
  headline-lg:
    fontFamily: Geist
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Geist
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Geist
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  body-md:
    fontFamily: Geist
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.5'
  label-caps:
    fontFamily: Geist
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.05em
  mono-sm:
    fontFamily: JetBrains Mono
    fontSize: 13px
    fontWeight: '400'
    lineHeight: '1.4'
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 32px
  sidebar-width: 260px
---

## Brand & Style

The design system is engineered for high-utility, developer-centric interfaces where information density and clarity are paramount. The brand personality is functional, precise, and authoritative, evoking the feel of a modern command center or IDE. 

The visual style leans into **Modern Minimalism** with a technical edge. It utilizes a deep-space dark theme to reduce eye strain during long sessions, punctuated by vibrant neon accents that draw attention to critical status changes and data points. By combining structured grids with subtle, low-opacity borders, the design system achieves a sense of organized complexity without overwhelming the user.

## Colors

The color palette is built on a "Dark-First" philosophy. The background uses a tiered system of near-blacks and deep grays to create logical grouping through surface luminosity rather than heavy shadows.

- **Primary (Neon Green):** Reserved for "Active," "Running," or "Success" states. It provides the highest luminosity against the dark background.
- **Secondary (Neon Purple):** Used for branding elements, primary actions, and system-level identifiers.
- **Tertiary (Neon Orange):** Dedicated to warnings, cost metrics, or items requiring human intervention.
- **Neutral:** A range of grays from `#0A0A0A` (deep background) to `#262626` (card surfaces) and `#A1A1AA` (secondary text).

## Typography

The design system utilizes **Geist** for its clean, technical aesthetic and exceptional legibility at small sizes. The typographic hierarchy is strictly controlled to manage information density.

- **Headlines:** Use semi-bold weights with tight letter spacing for a compact, "engineered" look.
- **Data Display:** Numerical values and metrics should use slightly larger sizes with primary or tertiary color accents.
- **Metadata:** All labels and "At a Glance" headers use uppercase styling with increased letter spacing to differentiate them from interactive content.
- **Code/Technical Data:** For agent names or file paths, a monospaced font like **JetBrains Mono** is recommended to maintain the developer-centric feel.

## Layout & Spacing

This design system employs a **Fluid Grid** with a fixed sidebar architecture. The layout is divided into a navigation sidebar (260px) and a main content area that reflows based on available width.

- **Rhythm:** A 4px base atomic unit governs all padding and margins. 
- **Cards:** Content is organized into cards with 24px internal padding. 
- **Grid:** Use a 12-column grid for the main content area. On desktop, cards typically span 3, 4, or 6 columns.
- **Breakpoints:** 
  - **Mobile (<768px):** Sidebar collapses into a hamburger menu; margins reduce to 16px; all cards stack to 12 columns.
  - **Tablet (768px - 1280px):** 2-column card layouts permitted.
  - **Desktop (>1280px):** Full multi-column dashboard view with 32px outer margins.

## Elevation & Depth

Depth in the design system is communicated through **Tonal Layers** and **Low-Contrast Outlines**.

1.  **Level 0 (Base):** The darkest neutral (`#0A0A0A`). Used for the global application background.
2.  **Level 1 (Surface):** A slightly lighter gray (`#1A1A1A`). Used for the sidebar and secondary containers.
3.  **Level 2 (Card):** The standard surface for interactive content (`#262626`). 
4.  **Outlines:** Every elevated element (cards, buttons, inputs) must have a 1px solid border. The border color should be a low-opacity white (e.g., `rgba(255, 255, 255, 0.1)`) to define edges without creating heavy visual weight. 

Shadows are avoided entirely to maintain the "flat-technical" aesthetic.

## Shapes

The shape language balance between industrial and approachable. 

- **Containers:** Cards and primary containers use `rounded-lg` (1rem / 16px) to soften the density of the information.
- **Interactive Elements:** Small buttons and inputs use `rounded-md` (0.5rem / 8px).
- **Status Pills:** Status indicators and chips use a fully rounded/pill shape to distinguish them from structural elements.

## Components

- **Buttons:** Primary buttons use a solid background of the secondary color with dark text. Secondary buttons are outlined with a subtle hover state that increases border opacity.
- **Status Chips:** High-contrast pills. "Running" uses a Primary Green background with 10% opacity and a solid green text/border. "Waiting" uses the Tertiary Orange.
- **Input Fields:** Darker than the card surface with a 1px border. On focus, the border transitions to the Secondary Purple with a subtle 2px outer glow of the same color.
- **Progress Bars:** Thin 4px tracks. The "filled" portion uses neon gradients or solid neon colors to represent different metrics (e.g., model usage).
- **Lists:** Clean rows with 1px dividers (`rgba(255,255,255,0.05)`). Every list item should have a clear leading element (icon or status dot) for quick scanning.
- **Side Navigation:** Active states are indicated by a subtle background tint and a vertical bar or high-contrast icon color change.