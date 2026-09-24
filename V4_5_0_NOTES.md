# v4.5.0 Continued Perfect Clean

Implemented:
- Continued perfect clean effect-only presentation.
- No visible text/cards/scroller.
- `ShowCard` and `GlobalScroller` disabled.
- 28-frame smooth colour-RAM fade transition.
- Longer balanced effect-flow timings.
- `ExKillSprites` now also settles BORDER, BKG, VIC_CTRL2 and VIC_CTRL1.
- `ExClear` still calls `ExKillSprites` before clearing.
- Row 23 rail remains removed.
- Sprite colour reset loop retained.
- Music remains expanded `3..10`, first song part skipped.
- No ultrafast tempo: style speeds remain 6..7 frames per row.
- PWM/filter motion remains max 3.
- Swing remains max 1.
- Softer resonance.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v45.prg subway.s
```
