# v2.6.0 ACME branch build fix

Fixes the ACME build error reported around `subway.s` lines 3602/3606/3610.

## Root cause
The drum dispatch in `TV_MusRowTrigger` used short conditional branches (`beq`) to labels that moved too far away after the v2.5 engine grew. ACME correctly reported target-out-of-range.

## Fix
The drum dispatch is now a safe long-dispatch chain:

- short `bne` only to the next local check
- absolute `jmp` to the actual drum handlers

This removes the 6502 branch-range dependency without changing drum semantics.

## Build
From `mega/src`:

```bash
acme subway.s
```

Or:

```bash
acme -f cbm -o ../build/exotic_megablast_v26.prg subway.s
```
