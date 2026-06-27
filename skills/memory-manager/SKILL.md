---
name: memory-manager
description: Capture, update, and retrieve durable project memory for coding work. Use when the user asks to remember project facts, preserve decisions, create reusable context, manage memory across accounts or machines, maintain MEMORY.md/DECISIONS.md/AGENTS.md, or summarize lessons from a completed task for future Codex sessions.
---

# Memory Manager

Use explicit, user-owned artifacts for durable memory. Model memory can help when available, but files and connected knowledge bases are easier to inspect, version, share, and correct.

## Storage Priority

1. Repo-specific rules -> `AGENTS.md`
2. Project facts and recurring context -> `MEMORY.md` or `docs/MEMORY.md`
3. Decisions and rationale -> `DECISIONS.md` or `docs/decisions/*.md`
4. Long implementation plans -> `PLANS.md` or issue/task tracker
5. Private team knowledge -> Notion, GitHub wiki, or another connected MCP source
6. Personal cross-repo defaults -> `~/.codex/AGENTS.md`

Read `references/storage-targets.md` when choosing between these locations.

## What To Capture

Capture durable facts that will help future sessions:

- repo layout and important directories
- build, test, lint, deploy, and run commands
- architecture decisions and tradeoffs
- project-specific style and naming conventions
- recurring pitfalls, flaky commands, or setup gotchas
- external systems, dashboards, docs, and issue trackers
- user preferences that are stable and relevant to coding

Do not capture secrets, tokens, passwords, private keys, credentials, or one-off chatter.

## Capture Workflow

1. Identify the memory type: rule, fact, decision, plan, or lesson.
2. Check whether an existing artifact should be updated.
3. Write concise entries with date, source, and confidence when useful.
4. Prefer bullets and command snippets over prose essays.
5. Link to files, PRs, issues, or docs instead of duplicating large content.
6. Ask before writing personal or sensitive preferences.

## Retrieval Workflow

Before using memory:

- Read the closest repo `AGENTS.md` first.
- Search for `MEMORY.md`, `DECISIONS.md`, `PLANS.md`, and relevant docs.
- Prefer current repo files over older remembered context.
- Treat memory as guidance, not proof of current external facts.

If memory conflicts with the user prompt, follow the prompt and mention the conflict if it matters.

## Entry Templates

Project fact:

```markdown
- YYYY-MM-DD: Fact. Source: file/path or user note. Confidence: high|medium|low.
```

Decision:

```markdown
## YYYY-MM-DD - Decision title

Decision: ...
Rationale: ...
Alternatives considered: ...
Applies to: ...
Revisit when: ...
```

Lesson:

```markdown
- Symptom: ...
  Cause: ...
  Fix or workaround: ...
  Verification: ...
```
