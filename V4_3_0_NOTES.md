# v4.3.0 Continued Clean Polish

Implemented:
- Continued clean effect-only presentation.
- No visible text/cards/scroller.
- `ShowCard` and `GlobalScroller` disabled.
- Smoother 20-frame colour-RAM fade transition.
- Effect durations expanded and balanced.
- Row 23 rail remains removed.
- Low-pulse postframe settles both VIC_CTRL2 and VIC_CTRL1.
- Sprite colour reset loop retained.
- Music remains expanded `3..10`, first song part skipped.
- No ultrafast tempo: style speeds remain 6..7 frames per row.
- PWM/filter motion remains max 3.
- Softer resonance and rebalanced mode/volume.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v43.prg subway.s
```
