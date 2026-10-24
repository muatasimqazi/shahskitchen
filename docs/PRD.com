# PROJECT: Shah's Kitchen — Premium Afghan Restaurant Website

## Your Role

You are a senior full-stack developer, award-winning UI/UX designer, technical SEO specialist, and conversion rate optimization expert.

Build a complete, production-ready website for **Shah's Kitchen**, an authentic Afghan cuisine restaurant.

The website must combine:
- Premium restaurant branding
- Beautiful, appetizing food photography
- Exceptional mobile usability
- Advanced technical SEO
- Local search optimization
- Lightning-fast performance
- Accessible, intuitive navigation
- Strong conversion optimization

The finished website should feel like a professionally designed restaurant experience, not a generic restaurant template.

---

# 1. TECHNOLOGY STACK

Use the following technologies:

**Framework**
- Next.js (latest stable version)
- App Router
- TypeScript
- React Server Components

**Styling**
- Tailwind CSS
- shadcn/ui for accessible UI primitives
- Lucide icons
- Framer Motion / Motion for subtle animations

**Other**
- Next.js Image optimization
- next/font for optimized typography
- Schema.org structured data
- Google Analytics 4
- Google Search Console integration
- Google Tag Manager (optional)

Prefer static generation and server rendering wherever appropriate.

Avoid unnecessary client-side JavaScript.

Do not introduce a database unless there is a clear functional requirement.

---

# 2. BRAND IDENTITY

Restaurant name: **Shah's Kitchen**

Cuisine: Authentic Afghan Cuisine

Brand positioning:

"Experience the rich flavors and warm hospitality of Afghanistan."

The restaurant should feel:
- Authentic
- Sophisticated
- Welcoming
- Contemporary
- Culturally inspired
- Family-friendly
- Premium but approachable

## Visual Design

Take inspiration from upscale Afghan, Persian, and Mediterranean restaurants.

### Color Palette

Primary:
- Deep forest green: #243F38

Secondary:
- Warm ivory: #F8F5EF

Accent:
- Muted antique gold: #B59A67

Supporting:
- Charcoal: #242424
- Warm beige: #EAE2D6

Use generous whitespace and elegant typography.

### Typography

Headings:
- Cormorant Garamond or Playfair Display

Body:
- Inter or DM Sans

Typography should be highly readable on mobile.

Avoid excessive decorative fonts.

### Design Details

Incorporate subtle Afghan-inspired visual elements:
- Geometric patterns
- Delicate borders
- Architectural arches
- Traditional textile-inspired details

Use these sparingly.

The website should feel modern rather than heavily ornamental.

---

# 3. MOBILE-FIRST DESIGN — HIGHEST PRIORITY

Assume 75–85% of restaurant website visitors may arrive from mobile devices. Treat this as a design assumption, not measured traffic.

Design for mobile first, then progressively enhance for tablets and desktops.

### Mobile Requirements

- Perfect rendering at 320px, 375px, 390px, 430px, and larger widths
- No horizontal scrolling
- Minimum 44px touch targets
- Clear and readable text
- Comfortable spacing
- Optimized images
- Fast navigation
- Accessible contrast
- No intrusive popups

### Mobile Navigation

Create a compact sticky header containing:
- Restaurant logo
- Menu button
- Prominent Order Online button

Include a mobile navigation drawer with:
- Home
- Menu
- About
- Gallery
- Visit Us
- Order Online

### Sticky Mobile Action Bar

Create a persistent bottom action bar containing:

**View Menu | Order Online | Directions**

The bar should:
- Respect iOS safe areas
- Never obscure page content
- Have large touch targets
- Remain unobtrusive
- Work consistently on Android and iOS

If online ordering is not configured, hide or disable that action rather than linking to a nonexistent page.

---

# 4. HOMEPAGE DESIGN

Create a beautiful, conversion-focused homepage.

## Section 1: Hero

Full-width, high-quality photograph of an authentic Afghan dish.

Preferred imagery:
- Qabli Uzbeki Plav
- Chicken Kebab
- Lamb Shank
- Traditional Afghan dining spread

Overlay elegant text:

**Authentic Afghan Flavors. Unforgettable Hospitality.**

Supporting copy:

"Discover the rich traditions of Afghan cuisine, where aromatic spices, time-honored recipes, and warm hospitality come together."

Primary CTA:
**Explore Our Menu**

Secondary CTA:
**Order Online**

Include a subtle scroll indicator.

On mobile, ensure the hero image is cropped intelligently and the text remains readable.

Use a gradient overlay if needed.

Avoid heavy videos or large animations that delay loading.

---

## Section 2: Introduction

Heading:

**Welcome to Shah's Kitchen**

Copy:

"At Shah's Kitchen, we celebrate the flavors of Afghanistan through carefully prepared dishes, fragrant spices, and comforting recipes inspired by Afghan culinary traditions."

Create a beautiful two-column layout on desktop.

On mobile, stack the image and text.

Include a link to the About page.

Do not invent the restaurant's history, ownership, or family traditions. Keep descriptive copy factual until the owner provides those details.

---

## Section 3: Signature Dishes

Heading:

**Discover Our Favorites**

Create premium food cards featuring:

### Qabli Uzbeki Plav — $25
A balance of savory, slow-cooked meat and a signature sweet, nutty garnish.

### Chicken Kebab — $21
Skewered pieces of marinated boneless chicken, grilled over an open flame, served with grilled tomato and saffron rice.

### Lamb Shank — $25
Slow-braised lamb shank with aromatic cardamom-infused basmati rice, sweet caramelized carrots, and raisins.

### Chicken Karahi — $22
Chicken cooked in a spiced tomato sauce with ginger and green chili, served with naan from the tandoor.

Each card should include:
- Beautiful food photograph
- Dish name
- Short description
- Price
- Dietary indicators where applicable
- Order button if online ordering is available

Use a responsive grid:
- Mobile: 1–2 columns depending on screen width
- Tablet: 2 columns
- Desktop: 4 columns

Do not use generic photographs that misrepresent specific dishes.

---

# 5. COMPLETE DIGITAL MENU

Create a dedicated, fully indexable menu page.

Route:

`/menu`

**Important: The menu must be rendered as actual HTML text, not as a PDF, screenshot, or image.**

Search engines should be able to index every dish name, description, and price.

## STARTERS

**Qurooti — $12**

Bread soaked in a rich, creamy yogurt sauce, topped with fried onions and mint.

Vegetarian.

**Mantu — $12**

A traditional Afghan dish of steamed, meat-filled dumplings layered with savory sauces.

---

## MAINS

**Chicken Kebab — $21**

Skewered pieces of marinated boneless chicken, grilled over an open flame, served with grilled tomato and saffron rice.

**Qabli Uzbeki Plav — $25**

A balance of savory, slow-cooked meat and a signature sweet, nutty garnish.

**Chicken Karahi — $22**

Chicken cooked in a spiced tomato sauce with ginger and green chili, served with naan from the tandoor.

**White Chicken Karahi — $23**

Chicken in a creamy white sauce, served with naan from the tandoor.

**Lamb Shank — $25**

Slow-braised lamb shank with aromatic cardamom-infused basmati rice, sweet caramelized carrots, and raisins.

---

## SIDES

**Qorma Lubia — $6**
Red bean stew. Vegetarian.

**Salata — $4**
Vegetarian.

**Saffron Rice — $6**
Vegetarian.

**Bamieh (Okra) Bowl — $6**
Vegetarian.

**Naan — $4**
Vegetarian.

---

## DRINKS

### House-Made with Real Fruit

**Golden Mango — $7**

**Blueberry Breeze — $7**

**Mint Lemonade — $6**

### Other Drinks

**Doogh — $5**
Refreshing, salty yogurt drink.

**Hot Tea — $3**
Black or green tea.

**Soda — $2**

---

## Menu Functionality

Implement:

1. Category navigation
2. Sticky category tabs on mobile
3. Smooth scrolling
4. Dish cards
5. Prices
6. Vegetarian indicators
7. Allergy disclaimer
8. Optional dish photography
9. Optional ordering links

Use a structured TypeScript menu data file.

Example:

```typescript
type MenuItem = {
  id: string;
  name: string;
  description: string;
  price: number;
  category: string;
  image?: string;
  vegetarian?: boolean;
  featured?: boolean;
  allergens?: string[];
};
```

Do not infer allergens from ingredients alone.

Include this disclaimer:

"Please let your server know about any food allergies. Some dishes contain nuts, dairy, or gluten, and all food is prepared in a kitchen that handles nuts."

Prices should be easy to update.

---

# 6. LOCAL SEO — CRITICAL REQUIREMENT

The website must be engineered to rank for relevant local restaurant searches.

Examples of target searches:

- Afghan restaurant in [CITY]
- Authentic Afghan food in [CITY]
- Afghan cuisine near me
- Afghan restaurant near me
- Best Afghan food in [CITY]
- Afghan kebab in [CITY]
- Qabli Plav in [CITY]
- Afghan dumplings in [CITY]
- Mantu near me
- Halal Afghan restaurant in [CITY] — only if halal status is verified

Replace [CITY] with the restaurant's actual location.

Never fabricate location information or business claims.

## Local SEO Architecture

Create dedicated pages:

`/`

`/menu`

`/about`

`/gallery`

`/contact`

`/location`

Optional:

`/catering` — only if catering is offered.

`/reservations` — only if reservations are accepted.

Do not generate thin, duplicate city-specific landing pages.

## Business Information

Create a centralized configuration file:

```typescript
export const restaurant = {
  name: "Shah's Kitchen",
  cuisine: "Afghan",
  address: "",
  city: "",
  state: "",
  zip: "",
  phone: "",
  email: "",
  hours: {},
  googleMapsUrl: "",
  googleBusinessProfileUrl: "",
  instagramUrl: "",
  facebookUrl: "",
  orderingUrl: "",
};
```

Use this configuration across the website.

Ensure business information is consistent everywhere.

---

# 7. STRUCTURED DATA / SCHEMA MARKUP

Implement valid JSON-LD structured data.

Use the most specific applicable Schema.org type:

`Restaurant`

Include verified information such as:
- Name
- URL
- Logo
- Images
- Address
- Telephone
- Geo coordinates
- Opening hours
- Serves cuisine
- Menu URL
- Price range, if verified
- Social profiles
- Accepted payment methods, if verified

Example:

```json
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "name": "Shah's Kitchen",
  "servesCuisine": "Afghan",
  "url": "https://YOUR-DOMAIN.com",
  "hasMenu": "https://YOUR-DOMAIN.com/menu"
}
```

Extend this with real business details once available.

Do not publish empty or fabricated properties.

Validate structured data using Google's Rich Results Test and Schema Markup Validator.

Structured data improves search engines' understanding of the restaurant but does not guarantee rich results.

---

# 8. TECHNICAL SEO

Implement a complete technical SEO foundation.

### Metadata

Every page must have:
- Unique title
- Unique meta description
- Canonical URL
- Open Graph metadata
- Twitter/X card metadata
- Appropriate robots directives

Example homepage title:

`Shah's Kitchen | Authentic Afghan Restaurant in [City]`

Example description:

`Discover authentic Afghan cuisine at Shah's Kitchen in [City]. Enjoy Qabli Plav, chicken kebabs, mantu, and more. Explore our menu and plan your visit.`

Use verified city information.

### Technical Requirements

Implement:
- Dynamic metadata through Next.js Metadata API
- XML sitemap
- robots.txt
- Canonical URLs
- Semantic HTML5
- Correct heading hierarchy
- Descriptive image alt text
- Internal linking
- Breadcrumbs on appropriate pages
- Custom 404 page
- Redirect handling
- Clean, descriptive URLs
- No duplicate content
- No broken links

Avoid keyword stuffing.

Write naturally for customers first.

### Image SEO

All images must:
- Have meaningful filenames
- Use descriptive alt text
- Be appropriately sized
- Use modern formats such as AVIF or WebP where supported
- Use responsive `sizes`
- Lazy-load below-the-fold imagery

Prioritize the hero image for loading.

Do not lazy-load the primary LCP image.

---

# 9. PERFORMANCE OPTIMIZATION

Target excellent real-world Core Web Vitals.

Goals at the 75th percentile of real-user measurements:

- Largest Contentful Paint: ≤ 2.5 seconds
- Interaction to Next Paint: ≤ 200 milliseconds
- Cumulative Layout Shift: ≤ 0.1

Aim for Lighthouse scores of:
- Performance: 95+
- Accessibility: 95+
- Best Practices: 95+
- SEO: 100

These are targets, not guarantees.

Performance requirements:
- Minimal client-side JavaScript
- Server Components by default
- Optimized images
- Efficient font loading
- No unnecessary dependencies
- No layout shifts
- Deferred noncritical scripts
- Minimal third-party trackers
- Optimized CSS
- Intelligent caching
- Static generation where possible

Test under simulated mobile network conditions.

---

# 10. LOCATION & CONTACT PAGE

Build a conversion-focused Visit Us page.

Include:
- Restaurant name
- Full address
- Phone number
- Business hours
- Google Maps directions
- Parking information, if available
- Accessibility information, if verified
- Contact options

Mobile visitors should be able to:
- Tap to call
- Tap for directions
- View opening hours
- Navigate to online ordering

Use a lightweight map preview rather than immediately loading a heavy interactive map.

Provide a prominent:

**Get Directions**

button that opens Google Maps.

Display whether the restaurant is currently open only when accurate business hours and timezone are configured.

---

# 11. PHOTO GALLERY

Create an elegant photo gallery showcasing:
- Signature Afghan dishes
- Restaurant interior
- Dining atmosphere
- Food preparation
- Traditional Afghan specialties

Use a responsive masonry-style or editorial grid.

Support full-screen image viewing.

Optimize every image.

Do not use AI-generated imagery presented as actual restaurant food or interiors.

If authentic photographs are unavailable, use clearly marked placeholders during development.

---

# 12. ABOUT PAGE

Create an inviting About page.

Suggested headline:

**A Celebration of Afghan Cuisine**

Suggested introduction:

"Shah's Kitchen brings together the aromatic spices, vibrant ingredients, and beloved dishes of Afghan cuisine. From comforting rice specialties to freshly grilled kebabs, our menu celebrates the flavors that make Afghan food so memorable."

Include sections about:
- Afghan culinary traditions
- Signature dishes
- Dining experience
- Hospitality

Avoid inventing the restaurant's founding story.

Use editable placeholders for owner-provided history.

---

# 13. CONVERSION RATE OPTIMIZATION

The website's primary purpose is to turn visitors into customers.

Prioritize these actions:

1. View Menu
2. Order Online
3. Get Directions
4. Call Restaurant

Place CTAs strategically throughout the website.

### Conversion Features

- Prominent hero CTA
- Sticky mobile action bar
- Menu CTAs
- Click-to-call links
- Google Maps integration
- Opening hours
- Clear contact details
- Minimal friction

Do not overwhelm users with too many competing actions.

If ordering is handled by a third-party platform, link directly to the restaurant's official ordering page.

Do not create a fake checkout experience.

---

# 14. ACCESSIBILITY

Target WCAG 2.2 AA.

Requirements:
- Semantic markup
- Keyboard navigation
- Visible focus states
- Accessible mobile menu
- Proper ARIA attributes
- Sufficient color contrast
- Accessible forms
- Reduced-motion support
- Screen-reader-friendly navigation
- No content hidden behind sticky UI
- Properly labeled interactive elements

---

# 15. ANALYTICS

Integrate Google Analytics 4.

Track meaningful events:

```typescript
menu_view
menu_category_click
order_online_click
call_click
directions_click
reservation_click
featured_dish_click
```

Track conversions without collecting unnecessary personal information.

Respect applicable consent requirements.

Avoid firing duplicate events.

Keep analytics configuration environment-driven.

---

# 16. RESPONSIVE DESIGN DETAILS

## Mobile

- Single-column editorial layout
- Large food photography
- Sticky action bar
- Collapsible navigation
- Compact menu categories
- Comfortable text sizes
- Minimal animations

## Tablet

- Two-column layouts
- Adaptive navigation
- Responsive food grid

## Desktop

- Expansive hero imagery
- Elegant multi-column sections
- Sophisticated spacing
- Rich editorial layouts
- Subtle hover interactions

Ensure consistency across all breakpoints.

---

# 17. DESIGN QUALITY EXPECTATIONS

The website should feel like a custom-designed premium restaurant website.

Avoid:
- Generic SaaS-style cards
- Excessive rounded corners
- Unnecessary gradients
- Heavy drop shadows
- Overused animations
- Generic stock photography
- Excessive emoji
- Template-looking sections
- Crowded mobile layouts

Favor:
- Strong typography
- Beautiful photography
- Editorial compositions
- Elegant whitespace
- Subtle motion
- Authentic cultural references
- Clear information hierarchy
- Consistent visual rhythm

Create a cohesive visual system.

---

# 18. PROJECT STRUCTURE

Use a maintainable architecture.

Suggested structure:

```text
src/
├── app/
│   ├── page.tsx
│   ├── menu/
│   │   └── page.tsx
│   ├── about/
│   │   └── page.tsx
│   ├── gallery/
│   │   └── page.tsx
│   ├── contact/
│   │   └── page.tsx
│   ├── location/
│   │   └── page.tsx
│   ├── sitemap.ts
│   ├── robots.ts
│   └── layout.tsx
├── components/
│   ├── layout/
│   ├── home/
│   ├── menu/
│   ├── seo/
│   └── ui/
├── config/
│   └── restaurant.ts
├── data/
│   └── menu.ts
├── lib/
│   ├── metadata.ts
│   └── structured-data.ts
└── styles/
```

Separate business content from presentation.

Make restaurant information and menu prices easy to edit.

---

# 19. TESTING & QUALITY ASSURANCE

Before completion:

### Functional Testing

Verify:
- Navigation works
- Mobile menu works
- Menu categories scroll correctly
- Phone links work
- Directions links work
- Ordering links work
- No broken routes
- No console errors

### Responsive Testing

Test:
- iPhone SE-sized screens
- Modern iPhones
- Android devices
- Tablets
- Desktop monitors

### SEO Testing

Verify:
- Every page has metadata
- Sitemap is valid
- Robots.txt is correct
- Canonical tags are correct
- Structured data is valid
- Content is indexable
- No accidental `noindex`
- No duplicate titles
- No broken internal links

### Performance Testing

Run Lighthouse against production builds.

Identify and address major performance bottlenecks.

### Accessibility Testing

Use automated checks and manual keyboard testing.

---

# 20. DELIVERABLES

Produce:

1. Complete production-ready Next.js website
2. Fully responsive design
3. Homepage
4. Digital menu
5. About page
6. Gallery
7. Contact page
8. Location page
9. Structured data implementation
10. SEO metadata
11. XML sitemap
12. Robots.txt
13. Optimized image handling
14. Analytics integration
15. Reusable component system
16. Centralized restaurant configuration
17. Deployment documentation
18. README with setup instructions

The website must be deployable to Vercel or another Next.js-compatible hosting provider.

---

# 21. IMPLEMENTATION PROCESS

Follow this order:

**Phase 1 — Architecture**
- Establish project structure
- Define restaurant configuration
- Create menu data
- Establish design tokens

**Phase 2 — Design System**
- Typography
- Colors
- Buttons
- Navigation
- Cards
- Responsive layouts

**Phase 3 — Homepage**
- Hero
- Introduction
- Signature dishes
- Menu preview
- Visit Us CTA

**Phase 4 — Supporting Pages**
- Menu
- About
- Gallery
- Contact
- Location

**Phase 5 — SEO**
- Metadata
- JSON-LD
- Sitemap
- Internal linking
- Image optimization

**Phase 6 — Performance**
- Core Web Vitals optimization
- Responsive testing
- Accessibility testing

**Phase 7 — Final QA**
- Production build
- Lighthouse audits
- Link validation
- Mobile usability review

---

# FINAL INSTRUCTIONS

Build this as a real restaurant website intended for production use.

Make thoughtful design decisions rather than blindly following common templates.

Prioritize:

1. Mobile usability
2. Visual quality
3. Local SEO
4. Loading speed
5. Customer conversions
6. Accessibility
7. Maintainability

The result should be visually distinctive, extremely fast, and designed to help Shah's Kitchen attract more customers through Google Search and Google Maps.

Do not stop after producing a wireframe or design concept.

Implement the actual application with complete pages, components, styling, metadata, and responsive behavior.

Where restaurant-specific information is missing, use clearly identified configuration placeholders and request the verified details before publishing.

**The finished experience should make visitors hungry, help them find what they want immediately, and make visiting or ordering from Shah's Kitchen effortless.**