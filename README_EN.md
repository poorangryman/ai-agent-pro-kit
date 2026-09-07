<p align="center">
  <h1 align="center">AI Agent Pro Kit</h1>
  <p align="center">
    <b>Long-Term Memory Engine & Anti-Slop Quality Gate for AI Coding Assistants</b>
  </p>
  <p align="center">
    <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License"></a>
    <a href="https://t.me/neuroslop_channel"><img src="https://img.shields.io/badge/Telegram-Channel-2CA5E0?logo=telegram&logoColor=white" alt="Telegram Channel"></a>
    <img src="https://img.shields.io/badge/Target-Cursor%20%7C%20Claude%20%7C%20Windsurf%20%7C%20Antigravity-success" alt="Supported Agents">
    <img src="https://img.shields.io/badge/Compatibility-Universal%20AI-blue" alt="Universal AI">
  </p>
  <p align="center">
    <a href="README.md">🇷🇺 Русский</a> | <b>🇬🇧 English</b>
  </p>
</p>

---

## Why This Repository Exists

When working regularly with AI assistants (Cursor, Claude Code, Windsurf, Antigravity, ChatGPT), two recurring problems appear:

| Problem Without the Kit | Solution with AI Agent Pro Kit |
| :--- | :--- |
| **Agent Amnesia**: in every new chat, the model forgets your stack, rules, and previous decisions, proposing incompatible code. | **`agent-memory`**: structured long-term context and architectural decision records (ADRs) governed by single-source-of-truth ownership. |
| **Generic AI Slop**: repetitive purple-blue gradients, rounded card grids with drop shadows, hollow marketing prose, and redundant code comments. | **`antislop`**: 38 quality rules, tone calibration, and an explicit Delivery Gate checklist before tasks are finalized. |

---

## Repository Structure

```
ai-agent-pro-kit/
├── skills/                      # Standard Agent Skills (agentskills.io format)
│   ├── agent-memory/            # Persistent memory for decisions & context
│   ├── antislop/                # Core anti-slop rules (38 rules + Delivery Gate)
│   ├── antislop-code/           # Cleans redundant code comments & forces idiomatic code
│   ├── antislop-copywriting/    # Human-first copy without hollow corporate buzzwords
│   ├── antislop-human/          # Natural persona tone and accessibility (a11y) checks
│   ├── antislop-layoutmobile/   # Mobile-first responsive layout rules
│   └── antislop-ui/             # Purposeful frontend styling without boilerplate
├── templates/
│   └── memory/                  # Production-ready persistent memory structure
├── prompts/                     # Copy-paste prompts for web chat interfaces
├── .cursor/rules/               # Drop-in rules for Cursor IDE (.mdc)
├── rules/                       # Loading rules for Antigravity
├── .windsurfrules               # Cascade rules for Windsurf
├── CLAUDE.md                    # Project guidelines for Claude Code
├── install.ps1                  # 1-Click installer for Windows
├── install.sh                   # 1-Click installer for Linux / macOS
└── GUIDE.md                     # Detailed walkthrough and examples
```

---

## Skills Catalog

The repository includes 7 skills organized by purpose:

### 1. Long-Term Memory (Agent Memory)
| Skill | Responsibility | When Used |
| :--- | :--- | :--- |
| **`agent-memory`** | Manages persistent context, projects, and rules. Enforces record classification (`[FACT]`, `[RULE]`, `[DECISION]`, `[UNKNOWN]`), freshness policies, and decision retention across sessions. | When queried about architecture, stack, conventions, or when recording new ADRs. |

### 2. Quality Gate (Anti-Slop)
| Skill | Responsibility | When Used |
| :--- | :--- | :--- |
| **`antislop`** | Core quality ruleset. 38 rules (R-01–R-38), rhythm/energy dials, and mandatory Delivery Gate checklist. | During UI design, layout tasks, or text generation. |
| **`antislop-code`** | Strips obvious syntax comments (`// increment counter`), restricting comments to non-obvious logic, edge cases, and security concerns. | During code generation, refactoring, and code reviews. |
| **`antislop-copywriting`** | Filters out AI tells (*"in today's digital landscape"*, *"unleash"*, *"delve"*, *"supercharge"*). Produces direct, factual text. | When writing documentation, articles, headings, and UI copy. |
| **`antislop-ui`** | Prevents boilerplate aesthetics: unnecessary gradients, unjustified drop-shadow cards, and meaningless decorative icons. | When building pages, layout components, and styles. |
| **`antislop-layoutmobile`** | Enforces responsive ergonomics: minimum tap targets (48px), valid viewports, zero horizontal scroll, and readable touch layouts. | When creating mobile layouts and responsive views. |
| **`antislop-human`** | Eliminates robotic cheerleading and hollow pleasantries; verifies contrast and accessibility (a11y) standards. | When crafting dialogue and interactive components. |

---

## Quick Start

### Windows (PowerShell)
```powershell
.\install.ps1
```

### macOS / Linux (Bash)
```bash
chmod +x install.sh && ./install.sh
```

### Web Chat Interfaces (ChatGPT, Claude Web, Gemini Web)
Copy the contents of [`prompts/UNIVERSAL_AGENT_PROMPT_EN.md`](prompts/UNIVERSAL_AGENT_PROMPT_EN.md) into your Custom Instructions or project System Prompt.

---

## How Project Memory Works

The `templates/memory` directory provides a structured layout for project context:
- `USER_CONTEXT.md`: durable preferences, tech stack, and non-negotiable boundaries.
- `projects/<project-name>/`: technical passport, architecture specs, and Architectural Decision Records (`decisions/`).
- `channels/<channel-name>/`: audience profiles and editorial guidelines.
- Canonical ownership: the model reads only relevant context before starting work, and records new decisions when finalized.

---

## Complete Guide
Detailed instructions and workflows are available in [**GUIDE.md**](GUIDE.md).

---

## More AI Resources

Practical workflows, prompts, architecture breakdowns, and agent skills in the Telegram channel [**@neuroslop_channel**](https://t.me/neuroslop_channel).

---

## License
Released under the [MIT License](LICENSE).
