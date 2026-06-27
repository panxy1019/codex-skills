# codex-skills

Personal Codex skills and durable guidance for coding work across machines and accounts.

This repo separates three surfaces that are easy to mix up:

- `skills/`: reusable task workflows that Codex can install and invoke.
- `agents/AGENTS.md`: global coding defaults that should apply often.
- `config/compact_prompt.md`: a prompt for Codex history compaction.

## Install Skills

Install all skills from this GitHub repo:

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo panxy1019/codex-skills \
  --ref v0.1.0 \
  --path skills/karpathy-guidelines skills/project-execution-manager skills/memory-manager skills/context-handoff
```

Or run the helper script from a checkout:

```bash
git clone https://github.com/panxy1019/codex-skills.git
cd codex-skills
./scripts/install.sh
```

Use `REF=main ./scripts/install.sh` if you want the latest version instead of a tagged release.

Restart Codex after installing or reloading skills.

## Optional Global Guidance

To make the coding guardrails apply broadly, copy `agents/AGENTS.md` into your Codex home:

```bash
mkdir -p ~/.codex
cp agents/AGENTS.md ~/.codex/AGENTS.md
```

If you already have a global `~/.codex/AGENTS.md`, merge the relevant sections manually.

## Optional Compact Prompt

Copy the compact prompt:

```bash
cp config/compact_prompt.md ~/.codex/compact_prompt.md
```

Then add this to `~/.codex/config.toml`:

```toml
experimental_compact_prompt_file = "~/.codex/compact_prompt.md"
```

## Skills

- `karpathy-guidelines`: coding guardrails for assumptions, simplicity, surgical edits, and verification.
- `project-execution-manager`: plan, execute, track, verify, and report multi-step coding work.
- `memory-manager`: capture durable project memory in files or connected knowledge bases.
- `context-handoff`: create compact continuation summaries for restarts, compaction, or account switching.

## Source Notes

`karpathy-guidelines` is inspired by Andrej Karpathy's public observations about LLM coding pitfalls and the MIT-licensed `multica-ai/andrej-karpathy-skills` project:

https://github.com/multica-ai/andrej-karpathy-skills

This repository's skill text is adapted for Codex usage and maintained as personal workflow guidance.
