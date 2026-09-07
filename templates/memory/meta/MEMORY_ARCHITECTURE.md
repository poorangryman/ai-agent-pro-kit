# Canonical Memory Architecture & Record Policies

## Canonical Ownership
- Current repository code $\rightarrow$ Primary source of truth for code.
- Verified platform documentation $\rightarrow$ Primary source of truth for library APIs.
- Memory store $\rightarrow$ Canonical source of truth for durable user preferences, project decisions, and editorial rules.

## Record Types
- `FACT` — A verified fact about the environment, platform, or project.
- `RULE` — An active constraint or instruction set by the user.
- `DECISION` — An architectural or product choice with rationale.
- `KNOWLEDGE` — Reusable domain methodology or insight.
- `HISTORY` — Past state, milestone, or log.
- `HYPOTHESIS` — Unverified idea or hypothesis.
- `UNKNOWN` — Missing context. Do not invent details; mark explicitly.
