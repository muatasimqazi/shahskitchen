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

`styles.css` holds all styling. `assets/` holds the paper texture, the geometric pattern and the favicon. `docs/PRD.com` is the original brief.

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

Search the HTML for `[` placeholders and `tel:` and fill in:

- Street address, city, state, ZIP (`visit.html` and the Visit band on every page)
- Phone number in every `href="tel:"` (sticky bar, Call Us buttons, Visit band)
- Hours
- Parking, accessibility and email on `visit.html`
- Owner story on `about.html`
- Real photos: replace each `<figure class="ph …">` placeholder with an `<img>` inside it
- Online ordering link, if one exists (deliberately omitted until then)

Prices live in the HTML of `menu.html` and `index.html`. Edit the number inside `<span class="price">`.
