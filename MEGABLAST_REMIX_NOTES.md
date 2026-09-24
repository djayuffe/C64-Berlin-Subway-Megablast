# Megablast SID Remix Integration

Integrated uploaded `megablast-c64-cracktro-v3.zip` musical material into the Exotic VIC/SID demo.

## What changed

- Active music sections 2..6 are replaced/remixed from Megablast source material.
- Source motifs used:
  - Megablast bass line: 33/28/29/36/31/38 pattern.
  - Megablast lead hook: 64/69/72/71/65/67/62/74 contour.
  - Megablast chord roots: 57, 53, 48, 55.
- Rebuilt 5 active 256-row sections:
  - BerlinA = filtered intro
  - BerlinB = rolling drive
  - TechnoA = ringmod acid
  - TechnoB = sync lead peak
  - TechnoC = combined rave peak
- Updated style tables for Megablast remix pacing, filter pressure and wave colours.
- Added true gated bass rests so the remixed bass does not smear/sustain through rests.
- Added drum code 4 as accent kick instead of falling through as snare.

## Build

```bash
cd mega/src
acme -f cbm -o ../build/exotic_megablast.prg subway.s
x64sc -autostartprgmode 1 -autostart ../build/exotic_megablast.prg
```
