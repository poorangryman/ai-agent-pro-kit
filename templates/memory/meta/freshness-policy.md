# Freshness & Invalidation Guidelines

1. **Explicit Invalidation**: Never leave superseded architecture rules active. Mark them as deprecated and record the new ADR.
2. **Freshness Tracking**: Add an `Updated: YYYY-MM-DD` tag when touching memory files.
3. **Audits**: Run periodic read-only audits every 3–6 months to discard obsolete requirements.
