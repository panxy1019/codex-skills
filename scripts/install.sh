#!/usr/bin/env bash
set -euo pipefail

REPO="${REPO:-panxy1019/codex-skills}"
REF="${REF:-main}"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
INSTALLER="$CODEX_HOME/skills/.system/skill-installer/scripts/install-skill-from-github.py"

SKILLS=(
  "skills/karpathy-guidelines"
  "skills/project-execution-manager"
  "skills/memory-manager"
  "skills/context-handoff"
)

if [[ ! -f "$INSTALLER" ]]; then
  echo "Could not find Codex skill installer at: $INSTALLER" >&2
  echo "Run this from a Codex environment with system skills installed." >&2
  exit 1
fi

python3 "$INSTALLER" --repo "$REPO" --ref "$REF" --path "${SKILLS[@]}"

mkdir -p "$CODEX_HOME"

if [[ -f "$CODEX_HOME/AGENTS.md" ]]; then
  echo "Global AGENTS.md already exists: $CODEX_HOME/AGENTS.md"
  echo "Review agents/AGENTS.md in this repo and merge it manually if desired."
else
  if [[ -f "agents/AGENTS.md" ]]; then
    cp "agents/AGENTS.md" "$CODEX_HOME/AGENTS.md"
    echo "Installed global guidance to $CODEX_HOME/AGENTS.md"
  else
    echo "No local agents/AGENTS.md found; skipped global guidance."
  fi
fi

if [[ -f "config/compact_prompt.md" && ! -f "$CODEX_HOME/compact_prompt.md" ]]; then
  cp "config/compact_prompt.md" "$CODEX_HOME/compact_prompt.md"
  echo "Installed compact prompt to $CODEX_HOME/compact_prompt.md"
fi

cat <<'MSG'

Restart Codex to pick up new skills.

Optional config.toml snippet:
experimental_compact_prompt_file = "~/.codex/compact_prompt.md"
MSG
