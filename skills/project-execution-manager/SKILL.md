---
name: project-execution-manager
description: Plan, execute, manage, and verify multi-step coding or project work. Use when the user asks for a plan, execution plan, task breakdown, implementation management, multi-step feature work, migration, refactor, bug campaign, or any request that needs progress tracking from intent through validation.
---

# Project Execution Manager

Turn an unclear or multi-step request into a verified execution loop. Use this skill to avoid stopping at a plan when the user expects the work to be carried through.

## Operating Mode

1. Discover enough context to avoid guessing.
2. Define the desired end state and verification evidence.
3. Create a short plan with checkpoints.
4. Execute in small batches.
5. Update status after each meaningful checkpoint.
6. Verify, review the diff, and summarize the outcome.

## Intake

Capture only what matters:

- objective: what will be true when done
- scope: files, repo areas, systems, or artifacts involved
- constraints: style, risk, deadlines, compatibility, do-not-touch areas
- evidence: tests, commands, screenshots, CI checks, or manual acceptance criteria
- stop condition: what ambiguity or failure should trigger a question

If local context can answer a question safely, inspect first instead of asking.

## Planning

Use a plan when work has more than one meaningful step or touches shared behavior. Keep it compact:

```text
1. Inspect relevant files -> evidence: scope is known.
2. Implement focused change -> evidence: diff matches objective.
3. Run targeted checks -> evidence: command output or explicit reason skipped.
```

Prefer plans that describe verification per step. Avoid plans made of vague activities such as "improve code" or "investigate more."

## Execution

- Work in the smallest coherent batch.
- Keep the user informed after each batch if the task is long-running.
- Do not accumulate speculative refactors while implementing.
- If a new issue appears, decide whether it blocks the objective, is caused by the change, or should be reported as unrelated.
- Update the plan as reality changes.

## Verification

Choose the narrowest useful check first:

- unit or integration test for the touched behavior
- typecheck or lint if the change affects contracts or syntax-sensitive code
- build if packaging or framework wiring changed
- manual browser or screenshot check for UI behavior
- no check only when the repo lacks tooling or dependencies are unavailable; say so explicitly

Treat a passing generic command as weaker evidence than a targeted check that exercises the changed behavior.

## Reporting

End with:

- what changed
- where it changed
- verification run and result
- anything not verified
- recommended next step only when it naturally follows

Keep the summary short enough that the user can act on it.
