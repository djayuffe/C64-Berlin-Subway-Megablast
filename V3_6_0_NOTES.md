# v3.6.0 Final Polish

Implemented:
- Expanded music journey remains `3..10`.
- First song part remains skipped.
- No ultrafast music: all style speeds are 6..7 frames per row.
- `SelectStyle` speed guard remains active.
- Smoother resonance, LP/BP mode-volume arc, calmer PWM/filter LFO.
- U glow expanded with inner columns and bottom shine.
- Active effect 8 remains calm U glow, not a raster-line effect.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v36.prg subway.s
```
