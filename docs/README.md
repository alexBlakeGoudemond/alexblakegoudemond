# Documentation README

This project uses two domains with separate responsibilities.

## Domains

### `alexblakegoudemond.com`

The **personal identity and IndieAuth domain**.

It is hosted on GitHub Pages via the `alexblakegoudemond/alexblakegoudemond` repository.

Its `index.html` contains:

- An `h-card` identifying Alex.
- `rel="me"` links to `absurdlygoud.com` and GitHub.
- An `authorization_endpoint` pointing to IndieAuth.com.
- A `token_endpoint` pointing to IndieAuth.com's token service.

This domain answers the question:

> **"Who is Alex?"**

### `absurdlygoud.com`

The **actual IndieWeb website**.

It remains the home for Alex's IndieWeb content and is also linked from the identity domain using `rel="me"`.

This domain answers the question:

> **"Where is Alex's website?"**

## Relationship

```text
alexblakegoudemond.com
        │
        │ identity
        │
        ├── rel="me" ──→ GitHub
        │
        ├── rel="me" ──→ absurdlygoud.com
        │
        └── IndieAuth
              │
              ├── authorization endpoint
              └── token endpoint

absurdlygoud.com
        │
        └── IndieWeb content
```

The separation allows `alexblakegoudemond.com` to act as the stable personal identity/authentication domain while
`absurdlygoud.com` remains the actual IndieWeb site.
