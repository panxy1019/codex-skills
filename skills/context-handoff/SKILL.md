---
name: context-handoff
description: Create compact continuation summaries for long Codex sessions, context compression, restarts, account switching, or handoff to another agent. Use when the user asks to compress context, preserve progress, resume later, move work to another account or machine, or prepare a concise state snapshot before continuing.
---

# Context Handoff

Create a compact, faithful snapshot that lets a future Codex session continue without rereading the whole conversation.

## When To Write A Handoff

Use this skill before:

- restarting Codex
- switching accounts or machines
- long context compaction
- pausing a multi-step implementation
- handing work to another agent
- pushing a work-in-progress plan into a repo

Codex can auto-compact thread history, but an explicit handoff is better when the user needs continuity across sessions or accounts.

## Handoff Format

Use this structure:

```markdown
# Handoff - YYYY-MM-DD

## Goal
One or two sentences describing the desired end state.

## Current State
- What has been completed
- What remains
- Important constraints

## Decisions
- Decision and rationale

## Files And Artifacts
- `path`: why it matters
- URL or repo link: why it matters

## Commands And Checks
- `command`: result

## Open Questions
- Question or blocker

## Next Step
The single best next action.
```

## Compression Rules

- Preserve user intent, constraints, decisions, and verification evidence.
- Prefer exact file paths and commands over narrative.
- Exclude routine tool noise, failed dead ends, and repeated discussion unless they affect the next step.
- Mark uncertain claims as uncertain.
- Never include secrets or raw credentials.
- Keep it short enough to paste into a new thread.

## Repo Artifact

For work that should survive outside chat, write the handoff to one of:

- `PLANS.md` for active project work
- `MEMORY.md` for durable project facts
- `docs/handoffs/YYYY-MM-DD-topic.md` for long-running handoffs

If the user only needs a one-time continuation prompt, output the handoff in chat instead of writing a file.
