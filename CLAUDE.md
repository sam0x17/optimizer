# Clawptomizer

An iterative benchmark optimization skill for Claude Code.

## What It Does

Clawptomizer is a Claude Code skill (`/clawptomizer`) that continuously optimizes code
by running a benchmark loop:

1. **Baseline** — Run benchmarks and record starting performance
2. **Analyze** — Identify the highest-impact optimization opportunity
3. **Implement** — Make a single, focused code change
4. **Validate** — Re-run benchmarks and compare against baseline
5. **Keep or Revert** — Keep improvements, revert regressions
6. **Repeat** — Loop until the target improvement is achieved or iterations are exhausted

## Usage

```
/clawptomizer <benchmark-command> [--target <path>] [--iterations <N>] [--threshold <N%>]
```

### Examples

```
/clawptomizer cargo bench
/clawptomizer "go test -bench=. ./..." --threshold 10%
/clawptomizer "npm run bench" --target src/parser --iterations 20
/clawptomizer pytest --benchmark-only --iterations 5
```

If no benchmark command is given, the skill will auto-detect common benchmark setups.

## Files

- `.claude/skills/clawptomizer/SKILL.md` — The skill definition
- `.clawptomizer-baseline.json` — State file created during optimization (gitignored)
