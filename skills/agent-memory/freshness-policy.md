# Freshness & Invalidation Policy

Memory is useful only when it remains true. Stale knowledge corrupts agent decision-making.

## Freshness Lifecycles

| Data Type | Typical Expiration | Invalidation Trigger |
| :--- | :--- | :--- |
| **API Endpoints & SDK Specs** | 3–6 months | Deprecation notices, library major upgrades |
| **Active Project Tasks** | Per Sprint / Commit | Feature merged or rejected |
| **Architectural Decisions (ADR)** | Permanent until superseded | New ADR explicitly superseding previous record |
| **User Coding Style / Preferences** | Ongoing | Explicit user preference change |
| **Domain Principles (Algorithms, Math)** | Evergreen | Flaw discovered in fundamental logic |

## Invalidation Rules

1. **Explicit Deprecation**: When a rule or decision is revoked, mark it with `[STATUS: DEPRECATED - YYYY-MM-DD]` and link to the superseding decision. Do NOT silently erase history unless it was factually incorrect.
2. **Freshness Timestamping**: Always append an `Updated: YYYY-MM-DD` tag to modified entries.
3. **Periodic Pruning**:
   - If an entry has not been referenced or verified in 6 months, verify against actual code before trusting it.
   - If a library version jumps major numbers (e.g. v2 to v3), invalidate all v2 syntax snippets immediately.
