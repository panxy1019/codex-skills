# Global Codex Guidance

Use this as personal default guidance across coding projects. Repo-level `AGENTS.md` files and explicit user instructions take precedence.

## Coding Guardrails

- Clarify assumptions before non-trivial implementation.
- Prefer the smallest solution that satisfies the request.
- Keep diffs surgical; avoid unrelated cleanup or formatting churn.
- Match the project's existing patterns before introducing a new abstraction.
- Define verification before or during implementation, not only at the end.
- Preserve user changes in a dirty worktree.

## Planning And Execution

- For multi-step work, keep a short plan with verification checkpoints.
- Execute the plan instead of stopping after planning unless the user only asked for a plan.
- Update progress when a checkpoint is finished or the plan changes.
- If blocked, report the concrete blocker and the smallest useful next action.

## Memory

- Use repo `AGENTS.md` for rules Codex should automatically follow.
- Use `MEMORY.md` for reusable project facts.
- Use `DECISIONS.md` for decisions and rationale.
- Use `PLANS.md` for work that spans sessions.
- Never store passwords, tokens, private keys, or credentials in memory files.

## Completion

When finishing coding work, report:

- what changed
- where it changed
- what validation ran
- what was not verified
- any remaining risk that matters
