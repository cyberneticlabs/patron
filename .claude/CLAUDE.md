
# Patron AI

Patron AI is a Nuxt 4 application for enterprise-grade AI-powered insights.

## Development

Use `pnpm` for all package management.

```bash
pnpm dev     # Start development server
pnpm build   # Build for production
pnpm lint    # Run linter
pnpm test    # Run tests
```

## Project Structure

- `src/apps/patron/app/`: Patron application (pages, components, composables, plugins)
- `src/layers/core/app/`: Shared layer (modules, design tokens, base layout)
- `i18n/locales/core/`: Shared i18n translations
- `reference/DESIGN.md`: Design system token source of truth
- `reference/design-system.md`: Implementation guide — Tailwind classes, component patterns, color usage. **Read before writing any styled component.**

## Tech Stack

- Nuxt 4 + Vue 3
- Vite (Tailwind CSS v4 via `@tailwindcss/vite`)
- `@nuxt/ui` (UI components)
- TypeScript

## Multi-Layer Architecture

Patron uses Nuxt's multi-layer system: the **core layer** provides shared infrastructure, while the **patron app** extends it with application-specific logic.

### Layers

| Layer | Path | Role |
|-------|------|------|
| Core  | `src/layers/core/` | Shared modules, design tokens, base layout, CSS. Declared via `nuxt.config.ts` with `@nuxt/ui`, Tailwind v4, and colorMode. |
| Patron| `src/apps/patron/` | Application-specific pages, overrides, and runtime config. Declares `extends: ['../../layers/core']` to inherit from core. |

### How it works

- **`extends: ['../../layers/core']`** in `src/apps/patron/nuxt.config.ts` merges both layers.
- Files in the patron layer **override** core layer files with the same path (e.g., `pages/index.vue` overrides core's).
- Merged directories: `app/` (pages, components, composables, plugins, middleware), `assets/`, `locales/`.
- Core layer provides: `@nuxt/ui` module, Tailwind v4 theme (Geist font, neon-green primary, dark-gray neutral), dark mode locked to `dark`.
- Patron layer provides: `pages/index.vue`, runtime config (`apiKey`, `public.siteUrl`).

### Managing layers

- **Add shared code** (used by multiple apps): place in `src/layers/core/app/` (pages, components, composables, plugins).
- **Override core behavior**: place a file with the same path in `src/apps/patron/app/`.
- **Add environment variables**: define in root `.env` and reference via `runtimeConfig` or `public` in patron's `nuxt.config.ts`.
- **New layers**: create a directory under `src/layers/`, add `nuxt.config.ts`, then extend it via `extends` in the app's config.
