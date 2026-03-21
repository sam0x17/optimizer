# Optimizer

An iterative benchmark optimization skill for Claude Code.

## What It Does

Optimizer is a Claude Code skill (`/optimizer`) that continuously optimizes code
by running a benchmark loop:

1. **Baseline** — Run benchmarks and record starting performance
2. **Analyze** — Identify the highest-impact optimization opportunity
3. **Implement** — Make a single, focused code change
4. **Validate** — Re-run benchmarks and compare against baseline
5. **Keep or Revert** — Keep improvements, revert regressions
6. **Repeat** — Loop until the target improvement is achieved or iterations are exhausted

## Usage

```
/optimizer <benchmark-command> [--target <path>] [--iterations <N>] [--threshold <N%>]
```

### Examples

```
/optimizer cargo bench
/optimizer "go test -bench=. ./..." --threshold 10%
/optimizer "npm run bench" --target src/parser --iterations 20
/optimizer pytest --benchmark-only --iterations 5
```

If no benchmark command is given, the skill will auto-detect common benchmark setups.

## Files

- `.claude/skills/optimizer/SKILL.md` — The skill definition
- `.optimizer-baseline.json` — State file created during optimization (gitignored)
