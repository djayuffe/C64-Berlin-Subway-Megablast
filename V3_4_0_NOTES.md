# v3.4.0 No Raster / No Superfast End

Implemented:
- Active raster-line/raster-wave effect removed.
- Effect 8 is now a slower `U glow` blend, still beat-reactive but calm.
- The superfast final music section is avoided.
- Music starts after the first part and loops sections `3..9`.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v34.prg subway.s
```
