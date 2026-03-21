#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

out="clawptomizer-skill.zip"
rm -f "$out"
zip -r "$out" .claude/skills/optimize/ CLAUDE.md
echo "Exported $out"
