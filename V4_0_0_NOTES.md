# v4.0.0 Final Clean

Implemented:
- Final effect-only presentation.
- No visible cards, titles, labels, or scroller.
- `ShowCard` and `GlobalScroller` disabled.
- Smooth 14-frame colour-RAM transition only.
- Legacy alternate transition aliases to the clean transition.
- Longer/even effect timings.
- Stronger VIC/sprite cleanup, including sprite common colour reset.
- Music remains expanded `3..10`.
- First song part remains skipped.
- No ultrafast tempo: speeds are 6..7 frames per row.
- PWM/filter motion calmed to max 4.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v40.prg subway.s
```
