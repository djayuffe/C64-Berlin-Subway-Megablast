# v4.1.0 Continued Final Clean

Implemented:
- Continued clean effect-only presentation.
- No visible text/cards/scroller.
- `ShowCard` and `GlobalScroller` disabled.
- Smoother 16-frame colour-RAM fade transition.
- Row 23 colour rail removed to keep the edge/sprite-pointer row clean.
- Effect durations expanded and balanced.
- Music remains expanded `3..10`, first song part skipped.
- No ultrafast tempo: style speeds remain 6..7 frames per row.
- PWM/filter motion remains calm at max 4.
- Softer resonance and mode/volume arc.
- v4.0 sprite/VIC cleanup retained.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v41.prg subway.s
```
