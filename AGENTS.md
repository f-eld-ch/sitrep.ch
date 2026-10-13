# AGENTS.md

Guidance for working in this repository (humans and coding agents alike).

This is the marketing, blog and documentation website for **sitrep**, a situation-management
tool for command staffs (civil protection), published at <https://sitrep.ch>. It is a
[Hugo](https://gohugo.io) site with a custom theme built on the sitrep brand tokens.

- Product repo: <https://github.com/f-eld-ch/sitrep> (AGPL-3.0, default branch `develop`)
- Brand repo: `f-eld-ch/brand` (private; checked out locally at `../brand`)
- The association behind sitrep is **F-ELD** (<https://f-eld.ch>). That site is about the
  association. **sitrep.ch is about sitrep only** and links to F-ELD only where needed
  (footer, hosting/service, support).

## Working rules

- **The live site deploys from `main`** (`.github/workflows/hugo.yaml`). Work on a branch,
  never push to `main`, and do not push or open PRs unless asked.
- Commit only when asked. Use small commits grouped by topic (theme, content, docs) with
  conventional-style messages (`feat(theme): ...`, `feat(content): ...`, `docs(admin): ...`).
- Do not leave generated output behind: `public/` and `resources/` are git-ignored.

## Commands

The Hugo version is pinned in **`.hugo-version`**. It is the single source of truth: the
GitHub Actions workflow and `scripts/cloudflare-build.sh` read it. To upgrade Hugo, change that
file only (the theme needs 0.158+). The non-extended build is enough, there is no Sass.

```sh
hugo server --buildDrafts      # live preview on http://localhost:1313, includes draft posts
hugo --gc --minify             # production build into public/
hugo --gc -d /tmp/out          # build elsewhere to avoid touching public/
scripts/sync-brand.sh          # copy tokens + logos from ../brand into the theme
```

A change is not done until the site builds **without errors or warnings** and you have looked
at the affected pages. For layout/CSS changes check light and dark mode, a narrow viewport
(~400px) and the French/Italian versions (their labels are longer).

## Repository layout

```
hugo.toml                  languages, menus, params, module mounts
content/                   all content (see below)
static/images/             site screenshots (WebP)
scripts/sync-brand.sh      brand sync (tokens.css, logos, favicons)
scripts/cloudflare-build.sh  build script for Cloudflare Workers Builds (production and previews)
wrangler.jsonc             Cloudflare Workers config: serves public/ as static assets
.hugo-version              pinned Hugo version (used by CI and the Cloudflare build)
themes/sitrep/
  layouts/                 baseof, home, features, blog, docs, partials, shortcodes
  assets/css/tokens.css    GENERATED from the brand repo, do not edit
  assets/css/site.css      all site styles (one plain stylesheet, no Sass, no Tailwind)
  static/brand/            logos and favicons, synced from the brand repo
  static/fonts/            self-hosted B612 / B612 Mono (WOFF2)
  i18n/{de,fr,it}.yaml     UI strings used by the theme
```

## Brand and design rules

The design follows `../brand/README.md`. The short version:

- Use the **brand tokens** (`var(--sitrep-*)`) for colours, type sizes and spacing. Do not
  hard-code hex values. Never edit `tokens.css` or the files in `static/brand/` by hand;
  change the brand repo and run `scripts/sync-brand.sh`.
- **One font family** (B612, plus B612 Mono for code/IDs), two weights (400/700), no third font.
- **KISS:** no decorative illustration or invented metrics. Screenshots are content.
- **Colour never carries meaning alone.** Status always has text as well (see `shortcodes/note.html`,
  the "Vorabversion" badge, the active-language marker).
- **Alert Red is only for alerts/active markers.** Do not reuse it for decoration.
- **Touch targets are at least 44px.** Contrast: 4.5:1 for body text. Dark mode is a first-class
  surface, not an inversion filter.
- Logo: minimum lockup height 32px.
- No JavaScript dependencies. The few scripts (theme toggle, menus) live in
  `partials/scripts.html` and everything must degrade gracefully without JS (`html.js` class).

## Languages

German is the default language and lives at `/`. French is at `/fr/`, Italian at `/it/`.
English is not offered on the website (the app itself supports it).

- Translate a content file by adding a sibling with a language suffix:
  `funktionen/_index.md` → `funktionen/_index.fr.md`, `blog/x/index.md` → `blog/x/index.fr.md`.
- Translated pages use translated URLs via `slug:` (single pages) or `url:` (sections), for
  example `/fr/a-propos/` and `/fr/fonctionnalites/`. Keep the German file name as the key.
- UI strings go into `themes/sitrep/i18n/{de,fr,it}.yaml`. **Add every key to all three files.**
- Menu labels are defined per language in `hugo.toml`. The `menu_title` front matter is
  informational only.
- Translations are drafted by us and **should be reviewed by native speakers**. Mention this
  when adding new ones. French labels run about 30% longer than German: never size controls
  to the German string.
- Blog posts only appear in languages that have a file. Docs are different (next section).

## Writing style

- The product is always spelled **`sitrep`** (lowercase), in every language and at the start
  of sentences. Not "SitRep", "Sitrep" or "SITREP".
- The contact address is **`info@sitrep.ch`**. Do not use `@f-eld.ch` addresses.
- Link to source code and the license at the product repo, not the GitHub org:
  `https://github.com/f-eld-ch/sitrep` and `https://github.com/f-eld-ch/sitrep/blob/HEAD/LICENSE`.
  The license is **AGPL-3.0**.
- Address readers with "Sie" in German, "vous" in French, "voi" in Italian.
- Only state facts you can source (product README, docs, release notes). Do not invent prices,
  membership terms, training offers or release dates. Features that are not generally
  available carry the badge "Vorabversion" (see below) and must be updated when they ship.
- Keep the voice plain and direct: short sentences, no marketing superlatives.

## Content types

### Pages (`content/*.md`)

Home (`_index.md`), `funktionen/`, `fuer-ihren-stab.md`, `einsetzen.md`, `ueber-uns.md`.

- **Home** is driven by front matter: `image`/`image_alt` (hero screenshot), `hero_cta`,
  `facts` (the "Was zeichnet sitrep aus?" grid), `cta` (call-to-action cards), `showcase_more`.
  The three showcase rows come from `funktionen/_index.md`: only features with a `teaser` field
  appear there.
- **Funktionen** (`layout: features`) lists features in front matter: `id` (anchor), `title`,
  `text`, optional `teaser`, `points` (bullets), `badge`, `image`/`image_alt`, `image2`/`image2_alt`.
  Order in the list is the order on the page. Anchors (`#journal`, `#karte`, …) are linked from
  other pages, so do not rename ids lightly.
- Link between pages with `{{< relref "/path" >}}` so links are language-aware.

### Blog (`content/blog/`)

Each post is a **page bundle**: `content/blog/YYYY-MM-slug/index.md` plus its images in the same
folder (for example `images/*.webp`).

```yaml
---
title: "..."
date: 2026-10-13
draft: true            # drafts are not published; remove to publish
tags: ["triage", "neue-funktion"]
summary: "One or two sentences shown in the blog list."
---
```

- New feature announcements are the main use. Keep `draft: true` until a human approves.
- Add `index.fr.md` / `index.it.md` for translations (same `date`, so lists sort identically).
- Write the first paragraph so it works as a summary, or set `summary:` explicitly.
- Articles may come from the product repo; move them here and convert the H1 into `title`.

### Documentation (`content/docs/`)

Docs follow the [Diátaxis](https://diataxis.fr) framework, for two audiences:

```
docs/user/   Benutzerhandbuch    docs/admin/   Administration
  tutorials/    learning-oriented, step by step to a first success
  how-to/       goal-oriented, solve a concrete task
  reference/    information-oriented, facts to look up
  explanation/  understanding-oriented, concepts and decisions
```

- Put every page in the quadrant that matches its purpose. Do not mix purposes in one page;
  split it instead.
- Section `_index.md` files carry `title`, `description`, `weight` and `diataxis` (`tutorial`,
  `howto`, `reference`, `explanation`). The quadrant weights are fixed (tutorials 10, how-to 20,
  reference 30, explanation 40; user before admin). Pages without a `weight` sort last.
- Page front matter: `title`, `description`, optional `weight`. Titles show in the sidebar.
- **Docs fall back to German.** Pages without a translation are served under `/fr/` and `/it/`
  with a notice ("nur auf Deutsch verfügbar"). This is configured with a `sites.matrix` mount in
  `hugo.toml`; do not remove it.
- **English pages:** several admin docs are copied from the product repo in English. Mark them
  with `contentlang: "en"` in the front matter. They then show an "only in English" notice and
  the text is tagged `lang="en"`.
- Source of truth for technical admin/dev docs is the product repo (`docs/administrator`,
  `docs/development`). Copy and adapt; do not diverge silently. Use GitHub URLs when linking to
  files that live there (not relative paths).

## Images

- Use **WebP**, at most ~1600px wide, quality ~85 (`magick in.png -resize '1600x>' -quality 85 out.webp`).
- Name by content, not by date, and give meaningful `alt` text (translated per language).
  Decorative duplicates (for example the showcase rows on the home page) use an empty alt.
- Screenshots may show features that are not released yet. Check what a screenshot reveals
  before using it on the landing page.
- Do not commit large originals. Keep sources in the product repo.

## Maintaining the theme

- Layout templates live in `themes/sitrep/layouts`. Prefer front matter over new templates,
  and add a partial instead of copy-pasting markup.
- All CSS is in `themes/sitrep/assets/css/site.css`, concatenated with `tokens.css` and
  fingerprinted at build time. Keep braces balanced: a stray `}` silently drops the next rule.
- Breakpoints in use: 40rem (type scale), 52rem (compact header), 56rem (two-column layouts and
  docs sidebar), 72rem (main navigation collapses into the menu button), 80rem (wider images).
- Do not add Tailwind, Sass or JS libraries without discussing it. The brand tokens already
  provide what the design needs.
- Rendered check list for a theme change: home, Funktionen, a docs page, the blog list and a
  post, in DE and FR, light and dark, desktop and ~400px.

## Deployment

`main` → GitHub Actions → GitHub Pages (`.github/workflows/hugo.yaml`). A merge to
`main` changes the live site, so review the build output before merging. Branch builds are not
deployed.
