# Documentation README

This repo contains the personal identity site for Alex Blake-Goudemond.

It exists alongside `absurdlygoud.com`, which is the actual IndieWeb website.

The two domains have deliberately separate responsibilities:

| Domain                   | Responsibility                      |
|--------------------------|-------------------------------------|
| `alexblakegoudemond.com` | Personal identity and IndieAuth     |
| `absurdlygoud.com`       | Actual IndieWeb website and content |

# Infrastructure

## Overview

The site is hosted using GitHub Pages and served through the custom domain:

```text
https://alexblakegoudemond.com
```

```text
                         Internet
                            │
                            ▼
                ┌──────────────────────────┐
                │ alexblakegoudemond.com   │
                │                          │
                │ Identity / IndieAuth     │
                └────────────┬─────────────┘
                             │
                         GitHub Pages
                             │
                             ▼
                alexBlakeGoudemond/
                alexblakegoudemond
                             │
                             ▼
                         index.html
```

## Repository

This repository is:

```text
alexBlakeGoudemond/alexblakegoudemond
```

## DNS

The domain is registered/managed through GoDaddy.

The apex domain (`@`) points to GitHub Pages using GitHub's recommended A records:

| Type | Name | Data            |
|------|------|-----------------|
| A    | @    | 185.199.108.153 |
| A    | @    | 185.199.109.153 |
| A    | @    | 185.199.110.153 |
| A    | @    | 185.199.111.153 |

The `www` subdomain points to the apex domain:

| Type  | Name | Data                   |
|-------|------|------------------------|
| CNAME | www  | alexblakegoudemond.com |

## HTTPS

GitHub Pages is configured with:

```text
Custom domain: alexblakegoudemond.com
Enforce HTTPS: enabled
```

The site is therefore served over:

```text
https://alexblakegoudemond.com
```

# IndieWeb Identity

The purpose of this site is to act as Alex's **personal identity domain**.

The site exposes an `h-card` containing Alex's name and URLs representing his identity.

```html

<div class="h-card">
    <p class="p-name">
        Alex Blake-Goudemond
    </p>

    <a class="u-url"
       href="https://alexblakegoudemond.com">
        alexblakegoudemond.com
    </a>

    <a class="u-url"
       href="https://absurdlygoud.com"
       rel="me">
        absurdlygoud.com
    </a>

    <a class="u-url"
       href="https://github.com/alexBlakeGoudemond"
       rel="me">
        GitHub
    </a>
</div>
```

The identity relationships are:

```text
                 Alex
                  │
       ┌──────────┴──────────┐
       │                     │
       ▼                     ▼
alexblakegoudemond.com   absurdlygoud.com
       │                     │
       │                     │
       └─────────┬───────────┘
                 │
              rel="me"
                 │
                 ▼
    github.com/alexBlakeGoudemond
```

# IndieAuth

`alexblakegoudemond.com` is the **IndieAuth identity domain**.

It delegates IndieAuth authorization to IndieAuth.com using:

```html

<link rel="authorization_endpoint"
      href="https://indieauth.com/auth">
```

and declares the token endpoint:

```html

<link rel="token_endpoint"
      href="https://tokens.indieauth.com/token">
```

These links allow IndieWeb clients to discover where authentication and token exchange should take place.

The identity domain itself does not host the IndieWeb content.

That remains the responsibility of:

```text
https://absurdlygoud.com
```

# Relationship With absurdlygoud.com

The two domains intentionally have different roles.

```text
alexblakegoudemond.com
        │
        │ Identity
        │ IndieAuth
        │
        └──────────────┐
                       │
                    rel="me"
                       │
                       ▼
                absurdlygoud.com
                       │
                       │
                       ▼
                 IndieWeb content
```

In short:

> **`alexblakegoudemond.com` is who Alex is.**

> **`absurdlygoud.com` is where Alex's IndieWeb lives.**