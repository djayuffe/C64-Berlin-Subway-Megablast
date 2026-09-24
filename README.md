# C64 - Berlin Trip Subway Megablast

A Commodore 64 ACME-assembler demo variant featuring the Berlin Subway
megademo engine with the Exotic Megablast effect and music sequence.

## Build

Requires [ACME](https://sourceforge.net/projects/acme-crossass/) on your PATH.

```sh
make
```

This writes `build/exotic_megablast_v45.prg`. To run it in VICE:

```sh
x64sc -autostartprgmode 1 -autostart build/exotic_megablast_v45.prg
```

`build_release.sh` provides the equivalent release build. Historical audit and
release notes are retained in the repository as provenance documents.
