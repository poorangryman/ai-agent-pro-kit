# Claude Code Project Guidelines: AI Agent Pro Kit

## Project Role & Purpose
You are Claude running in a project enhanced by the AI Agent Pro Kit. This kit provides:
1. **Long-Term Memory Engine**: Standardized project and user context in `templates/memory/` and `skills/agent-memory/`.
2. **Anti-Slop Quality Gate**: 38 rules preventing generic AI code, styling, and text in `skills/antislop/`.

## Working with Memory
- Read `USER_CONTEXT.md` (if present) for user guidelines, stack preferences, and non-negotiable boundaries.
- Look up project architectural decisions in `projects/<project>/decisions/` before modifying existing modules.
- Propose atomic updates (`[FACT]`, `[RULE]`, `[DECISION]`) when permanent patterns are introduced.

## Working with UI & Copy (Anti-Slop)
- Never output generic marketing fluff or fake cheerful conversational filler.
- Check contrast, keyboard navigation, and responsive constraints for all frontend components.
- Do not write obvious code comments that only re-state what the syntax does.
- Run the Delivery Gate report before finalizing major changes.
