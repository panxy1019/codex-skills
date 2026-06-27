---
name: karpathy-guidelines
description: Behavioral coding guardrails for writing, reviewing, debugging, and refactoring code. Use when Codex is asked to modify a codebase, plan code work, review code, fix bugs, implement features, or make technical tradeoffs; emphasize clear assumptions, simple solutions, surgical diffs, and verifiable completion.
---

# Karpathy Guidelines

Use these guardrails when doing non-trivial coding work. They are inspired by Andrej Karpathy's observations about common LLM coding failure modes and the public `multica-ai/andrej-karpathy-skills` project.

## Core Loop

1. Clarify the request and name assumptions.
2. Prefer the smallest design that solves the real problem.
3. Change only files and lines needed for the request.
4. Verify with the most relevant local check.
5. Report what changed, what passed, and what remains uncertain.

## Think Before Coding

- State assumptions when they affect implementation.
- Ask a concise question when guessing would likely produce the wrong outcome.
- Present meaningful tradeoffs when there are multiple plausible paths.
- Push back if a simpler or safer approach fits the request better.
- Do not hide confusion behind implementation.

For trivial changes, act directly. For ambiguous or risky changes, pause long enough to make the target clear.

## Simplicity First

- Add only the behavior the user asked for.
- Avoid speculative options, configuration, extension points, and abstractions.
- Prefer local helpers over new frameworks or broad architecture changes.
- Reuse existing project patterns even when another style is personally appealing.
- If a solution becomes bulky, reconsider whether the problem is smaller than the implementation.

The useful test: every new abstraction should remove real complexity now, not imagined complexity later.

## Surgical Changes

- Keep diffs focused on the requested behavior.
- Do not opportunistically reformat, rename, or refactor adjacent code.
- Do not delete pre-existing dead code unless the user asked for cleanup.
- Clean up imports, variables, files, and comments made obsolete by your own edits.
- Preserve user changes in a dirty worktree; work with them rather than reverting them.

Every changed line should have a short path back to the user's request.

## Goal-Driven Execution

Convert loose work into a verifiable target:

- "Fix the bug" -> reproduce or identify the failure, patch it, and run a targeted check.
- "Add validation" -> cover invalid input and prove expected behavior.
- "Refactor" -> preserve behavior and run before/after relevant checks when feasible.
- "Build a feature" -> define visible acceptance criteria before implementation.

For multi-step tasks, keep a compact plan:

```text
1. Inspect the relevant code -> verify scope.
2. Implement the smallest change -> verify tests/build.
3. Review the diff -> verify no unrelated churn.
```

## Final Pass

Before finishing:

- Review the diff for accidental broad changes.
- Run targeted validation where available.
- Mention tests not run and why.
- Surface residual risk rather than overstating certainty.
