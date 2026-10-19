# sitrep.ch

The website of **sitrep**, the software for electronic situation display in command staffs (civil protection),
published at <https://sitrep.ch>: features, how to use sitrep, blog and documentation, in German, French and Italian.

sitrep itself is developed in [f-eld-ch/sitrep](https://github.com/f-eld-ch/sitrep). The association behind it,
**F-ELD**, has its own site, <https://f-eld.ch> ([f-eld-ch/f-eld-ch.github.io](https://github.com/f-eld-ch/f-eld-ch.github.io)),
which uses the same theme.

The site is built with [Hugo](https://gohugo.io) and a custom theme on the sitrep brand tokens
([f-eld-ch/brand](https://github.com/f-eld-ch/brand), private).

## Preview and build

Install Hugo in the version pinned in [`.hugo-version`](.hugo-version), then:

```sh
hugo server --buildDrafts     # live preview on http://localhost:1313, includes drafts
hugo --gc --minify            # production build into public/
```

A change is done when the site builds without errors or warnings. The changelog page loads the releases of
f-eld-ch/sitrep from GitHub at build time; set `HUGO_GITHUB_TOKEN` to avoid the API rate limit.

## What is where

| Path | Content |
| --- | --- |
| `content/` | Pages, blog posts (page bundles) and documentation, in German with `*.fr.md` and `*.it.md` translations |
| `themes/sitrep/` | The theme: layouts, one stylesheet, brand tokens, fonts, UI strings |
| `static/images/` | Screenshots (WebP) |
| `scripts/` | `sync-brand.sh`, `cloudflare-build.sh`, `update-hugo.sh` |
| `wrangler.jsonc` | Cloudflare Workers configuration (static assets) |

[AGENTS.md](AGENTS.md) describes the content types, the writing style, the official BABS terms, the design
rules and how to work with the repository. Read it before changing content or the theme.

## Deployment

`main` is built and deployed by Cloudflare Workers Builds to <https://sitrep.ch>
(`scripts/cloudflare-build.sh`, then `npx wrangler deploy`). Every other branch gets a preview
(drafts included, `noindex`). A weekly workflow opens a pull request when a new Hugo release is out.

## Contributing

Work on a branch and open a pull request; do not push to `main`. Titles follow
[Conventional Commits](https://www.conventionalcommits.org) (`feat(content): …`, `fix(theme): …`, `docs(admin): …`).
Translations into French and Italian are welcome and are reviewed by native speakers.


## License

| What | License |
| --- | --- |
| **Code:** the theme (`themes/sitrep/`), scripts, workflows and configuration | [AGPL-3.0](LICENSE), like [sitrep](https://github.com/f-eld-ch/sitrep) |
| **Content:** texts, blog posts, documentation and screenshots (`content/`, `static/images/`) | [CC BY-SA 4.0](LICENSE-CONTENT). Please credit "Verein F-ELD, sitrep.ch" |
| **Font** B612 (`themes/sitrep/static/fonts/`) | SIL Open Font License 1.1 ([`LICENSE-B612.txt`](themes/sitrep/static/fonts/LICENSE-B612.txt)) |
| **Not covered:** the logos and the names sitrep and F-ELD (`themes/sitrep/static/brand/`), and third-party material in screenshots (map data, BABS signatures) | Not licensed under these terms. All rights remain with their owners; for the logos and names, with the Verein F-ELD |

Documentation that was copied from the sitrep repository stays under AGPL-3.0, as there.

Questions about sitrep or the service: [info@sitrep.ch](mailto:info@sitrep.ch)
