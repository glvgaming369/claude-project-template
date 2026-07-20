# API Conventions

> Template starter — replace the examples below with this project's actual stack and conventions once decided. Delete anything that doesn't apply.

## Response Envelope

Use a consistent shape for every endpoint response:

```json
{
  "success": true,
  "data": null,
  "error": null,
  "meta": { "page": 1, "limit": 20, "total": 0 }
}
```

- `error` is `null` on success and `{ "code": "...", "message": "..." }` on failure.
- `meta` is only present for paginated/list endpoints.

## Errors

- Return the correct HTTP status code (`400` validation, `401` unauthenticated, `403` unauthorized, `404` not found, `409` conflict, `500` unexpected).
- Never leak stack traces, internal paths, or raw DB errors in the response body — log detail server-side, return a generic message to the client.
- Validate all input at the boundary (request body/query/params) before it reaches business logic.

## Auth

- `TODO`: describe the auth scheme (Bearer JWT / session cookie / API key) and where tokens are issued/refreshed.

## Versioning

- `TODO`: describe how breaking changes are versioned (URL prefix `/v1/`, header, etc.) — pick one before the first breaking change ships.

## Naming

- Routes: plural nouns, kebab-case (`/user-accounts/:id`).
- JSON fields: `camelCase` (or `snake_case` — pick one per project and stay consistent across every endpoint).
