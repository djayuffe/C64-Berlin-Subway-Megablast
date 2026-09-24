# v3.3.0 Magic U / Song Skip

Implemented:
- Large `U` highlight in the magic-byte/ghost-byte effect.
- Large `U` highlight in the chroma-blend effect.
- The `U` is drawn as a block overlay using screen RAM + colour RAM.
- First music section is skipped. The tune starts directly on the rolling-drive remix section and loops through sections `3..10`.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v33.prg subway.s
```
