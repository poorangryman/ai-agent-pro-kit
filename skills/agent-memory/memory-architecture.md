# Memory Architecture Specification

This specification defines the machine-readable layout, record schemas, and lifecycle rules for agentic long-term memory.

## Directory Layout Standards

```
memory/
├── USER_CONTEXT.md          # Global durable context: user identity, core preferences, global limits
├── projects/                # Project memory isolated by repository / product
│   └── <project-name>/
│       ├── 00-INDEX.md      # Overview, status, links
│       ├── technical-context.md # Architecture, tech stack, dependencies
│       ├── project-context.md   # Business domain, goals, constraints
│       └── decisions/       # Architectural Decision Records (ADRs)
├── channels/                # Channel & audience memory
│   └── <channel-name>/
│       ├── 00-INDEX.md      # Platform, metrics, tone-of-voice
│       └── positioning.md   # Editorial policies, target audience profiles
├── knowledge/               # Reusable domain knowledge
│   ├── INDEX.md             # Master knowledge registry
│   └── <domain>/            # Reusable principles and validated methodologies
└── meta/                    # Governance & validation rules
    ├── MEMORY_ARCHITECTURE.md
    └── freshness-policy.md
```

## Record Format

Every atomic record in memory markdown files should follow this structured tagging convention:

```markdown
### [TYPE: FACT | RULE | DECISION | KNOWLEDGE | HISTORY | HYPOTHESIS | UNKNOWN] Short Title
- **Scope**: [Global | Project: <name> | Channel: <name>]
- **Updated**: YYYY-MM-DD
- **Source**: [Commit hash | User message | External documentation link]
- **Details**: Concise description of the fact, rule, or decision.
- **Rationale / Impact**: Why this was decided or what it affects.
```

## Truth Hierarchy (Priority Resolution)

When encountering conflicting signals, apply the following resolution order:
1. **Direct User Override**: The user's explicit instruction in the current conversation.
2. **Authoritative Codebase / Repository**: The actual state of the files in the project.
3. **Verified Primary Documentation**: Official platform API documentation.
4. **Memory Repository**: Recorded historical decisions and rules.
5. **Base Model Default Assumptions**: Fallback only when none of the above exist.

Never let a memory file contradict verified primary source documentation without explicit user instruction.
