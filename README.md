# Shah’s Kitchen

Static website for Shah’s Kitchen, an Afghan restaurant. Plain HTML + one CSS file, no build step, hosted on GitHub Pages.

Live: https://shahskitchen.com/

## Pages

| File | Purpose |
|---|---|
| `index.html` | Home: hero, intro, favorites, menu preview, visit band |
| `menu.html` | Full menu with sticky category tabs |
| `about.html` | About |
| `gallery.html` | Photo gallery (placeholders until photos arrive) |
| `visit.html` | Address, hours, phone, directions |
| `404.html` | Not-found page (GitHub Pages serves it automatically) |

`styles.css` holds all styling. `assets/` holds the logo, favicons, paper texture and geometric pattern. `assets/images/` holds web-optimized photos (max 1400px, ~150 KB each); the untouched originals live in `assets/images/originals/`, which is gitignored. `docs/PRD.com` is the original brief.

## Run locally

```sh
python3 -m http.server 8000
```

Open http://localhost:8000.

## Publish

Push to `main`, then in the repo go to Settings → Pages → Source: "Deploy from a branch", branch `main`, folder `/ (root)`. Or:

```sh
gh api -X POST repos/muatasimqazi/shahskitchen/pages -f 'source[branch]=main' -f 'source[path]=/'
```

## Custom domain (shahskitchen.com)

`CNAME` in the repo root tells GitHub Pages the domain. DNS is at GoDaddy; set these records there:

| Type | Name | Value |
|---|---|---|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |
| CNAME | www | muatasimqazi.github.io |

Delete any existing A records on `@` (GoDaddy parking) first. Then in Settings → Pages, confirm the custom domain shows `shahskitchen.com` and tick "Enforce HTTPS" once the certificate is issued (can take up to an hour after DNS propagates).

## Before going live

Still placeholders (search the HTML for `[`):

- Parking, accessibility and email on `visit.html`
- Owner story on `about.html`
- Online ordering link, if one exists (deliberately omitted until then)

Business details (address, phones, hours) live in the Visit band on every page and in the JSON-LD on `index.html`. Prices live in `menu.html` and `index.html`; edit the number inside `<span class="price">`.
