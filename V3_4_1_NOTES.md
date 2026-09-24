# v3.4.1 No Ultrafast Music

Implemented:
- No active music section can run ultra-fast.
- `StyleSpeedTbl` is retuned to minimum 6 frames per row.
- `SelectStyle` now clamps speed below 6 and resets `TV_MusTick` immediately.
- Song loop remains `3..9`, so the superfast final section is avoided.
- PWM/filter LFO steps are calmed to avoid frantic end-section modulation.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v341.prg subway.s
```
