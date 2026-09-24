# v3.5.0 Expanded

Implemented:
- Longer scene timings for all 10 effects.
- Expanded music journey to sections `3..10`.
- The first song part is still skipped.
- The former final section is allowed again only as a slowed/safe finale.
- No active style can run ultra-fast: minimum speed remains 6 frames per row.
- U glow is expanded with inner glow columns.
- Raster-line/raster-wave effect remains removed.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v35.prg subway.s
```
