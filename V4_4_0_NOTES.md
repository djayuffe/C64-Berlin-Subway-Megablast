# v4.4.0 Perfect Clean

Implemented:
- Perfect clean effect-only presentation.
- No visible text/cards/scroller.
- `ShowCard` and `GlobalScroller` disabled.
- 24-frame smooth colour-RAM fade transition.
- Long/even effect-flow timings.
- `ExClear` now calls `ExKillSprites` before clearing.
- Transition settle restores VIC_CTRL2 and VIC_CTRL1 before next effect.
- Row 23 rail remains removed.
- Sprite colour reset loop retained.
- Music remains expanded `3..10`, first song part skipped.
- No ultrafast tempo: style speeds remain 6..7 frames per row.
- PWM/filter motion remains max 3.
- Swing remains max 1.
- Softer resonance and mode/volume.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v44.prg subway.s
```
