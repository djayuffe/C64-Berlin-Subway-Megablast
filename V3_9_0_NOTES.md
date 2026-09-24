# v3.9.0 Smooth Clean Continue

Implemented:
- Continued clean effect-only direction.
- Removed rain/menu texture from transitions.
- Transition is now only a short colour-RAM fade.
- No visible cards, titles, labels, or scroller.
- `ShowCard` and `GlobalScroller` remain disabled.
- Effect timing expanded and smoothed.
- Music remains expanded `3..10`, first song part skipped, no ultrafast tempo.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v39.prg subway.s
```
