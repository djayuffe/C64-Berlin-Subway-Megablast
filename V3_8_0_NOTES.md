# v3.8.0 Clean Effect Only

Implemented:
- Removed visible text/cards/scroller from runtime.
- `ShowCard` is disabled.
- `GlobalScroller` is disabled.
- Title/card strings are blank placeholders.
- Scroll message is blank.
- Transitions are short smooth rain/fade texture only, no labels.
- Effects have slightly longer balanced durations.
- Music remains expanded `3..10`, first song part skipped, no ultrafast speed.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v38.prg subway.s
```
