# Memory Storage Targets

Use the smallest durable surface that matches the scope.

## `AGENTS.md`

Use for instructions Codex should automatically follow in a repo or globally:

- repo layout
- commands
- coding conventions
- verification expectations
- do-not-touch constraints

Keep it short. Link out to detailed docs when it grows.

## `MEMORY.md`

Use for reusable facts that are not strict instructions:

- architecture summaries
- common workflows
- environment notes
- recurring pitfalls
- links to important docs

Update it as facts change. Remove stale entries.

## `DECISIONS.md`

Use when the "why" matters:

- chosen architecture
- rejected alternatives
- compatibility or migration tradeoffs
- performance and security decisions

Prefer dated sections so future agents can judge freshness.

## `PLANS.md`

Use for longer work that may span sessions:

- objective
- milestones
- current status
- verification checklist
- open questions

Do not let `PLANS.md` become a graveyard. Close or archive finished plans.

## External Knowledge Bases

Use Notion, GitHub wiki, Linear, or another connected system when knowledge must be shared across repos, people, or accounts. Include canonical links in repo files.
