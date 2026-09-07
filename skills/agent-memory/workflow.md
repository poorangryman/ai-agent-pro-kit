# Agent Memory Workflow Guide

Step-by-step procedure for AI coding assistants when interacting with project memory.

## Turn Execution Protocol

### Step 1: Session Initialization (Read)
When starting a session or receiving a prompt:
1. Detect active project directory.
2. If `USER_CONTEXT.md` exists in workspace or home: inspect it to learn user constraints, language preferences, and style guidelines.
3. If `projects/<project>/00-INDEX.md` exists: read the project overview and recent decisions.
4. **Token Budget Rule**: Do NOT read the entire memory repo. Only read files directly relevant to the current user query.

### Step 2: In-Session Reasoning (Apply)
- Apply user preferences without needing to be re-told every chat.
- Adhere strictly to past architectural decisions (`DECISION`).
- If user requests a direction contrary to an existing `DECISION`, note the conflict respectfully:
  > *"Note: This differs from the recorded architectural decision in `projects/.../decisions/001.md`. Would you like to update our standard decision?"*

### Step 3: Session Conclusion (Write/Sync)
- If new conventions, patterns, or architecture were established during the work:
  1. Formulate a concise summary following the record schema.
  2. Ask the user: *"Would you like me to record this decision to `projects/<project>/decisions/` for future sessions?"*
  3. Upon approval, append or update the file.
