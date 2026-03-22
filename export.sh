#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

out="optimizer-skill.zip"
rm -f "$out"

# Build zip with SKILL.md at the top level (not nested under .claude/skills/optimize/)
tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT
cp .claude/skills/optimize/SKILL.md "$tmpdir/"
(cd "$tmpdir" && zip -r - .) > "$out"

echo "Exported $out"
