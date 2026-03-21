# Optimizer

An iterative benchmark optimization skill for Claude Code.

## What It Does

Optimizer is a Claude Code skill (`/optimize`) that continuously optimizes code
by running a benchmark loop:

1. **Baseline** — Run benchmarks and record starting performance
2. **Analyze** — Identify the highest-impact optimization opportunity
3. **Implement** — Make a single, focused code change
4. **Validate** — Re-run benchmarks and compare against baseline
5. **Keep or Revert** — Keep improvements, revert regressions
6. **Repeat** — Loop until the target improvement is achieved or iterations are exhausted

## Usage

```
/optimize [benchmark-command]
```

### Examples

```
/optimize cargo bench
/optimize cargo bench --bench pomap_bench
/optimize ./benchmark.sh
/optimize "go test -bench=. ./..."
/optimize npm run bench
/optimize pytest --benchmark-only
```

If no benchmark command is given, the skill will auto-detect common benchmark setups.

## Files

- `.claude/skills/optimize/SKILL.md` — The skill definition
- `.optimizer-baseline.json` — State file created during optimization (gitignored)
