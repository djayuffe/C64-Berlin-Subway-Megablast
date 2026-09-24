# v4.2.0 Final Clean Polish

Implemented:
- Continued clean effect-only presentation.
- No visible text/cards/scroller.
- `ShowCard` and `GlobalScroller` disabled.
- Smoother 18-frame colour-RAM fade transition.
- Effect durations expanded and balanced.
- Row 23 rail remains removed.
- Stronger sprite/VIC cleanup:
  - common sprite colours reset.
  - individual sprite colours reset.
  - low-pulse postframe settles VIC_CTRL2.
- Music remains expanded `3..10`, first song part skipped.
- No ultrafast tempo: style speeds remain 6..7 frames per row.
- PWM/filter motion softened to max 3.
- Softer resonance.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v42.prg subway.s
```
