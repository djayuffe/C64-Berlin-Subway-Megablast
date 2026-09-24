# Exotic Megablast Remix v2.5.0

Continuation/improvement pass over v2.4.0.

## Fixed / improved

- Fixed a real ACME hazard where the `ReadKeys:` explanatory line could be parsed as a duplicate global label.
- Added `ExPostFrame`, called after the global scroller every frame.
- Sprite effects now survive the row-24 scroller:
  - `$07f8-$07ff` sprite pointers are restored each frame while sprite effects are active.
  - `ex_sprites_active` tracks whether pointer restoration is needed.
- Added global beat-reactive colour rails after all effects/scroller:
  - colour RAM only
  - no screen-char overwrite
  - driven by `musicPulse`, `beatSin`, and `frameCounter`
- Strengthened sprite/VIC cleanup:
  - `ClearScreenColor` and `ExKillSprites` now also reset `$d010` and `$d01c`.
  - Prevents stale sprite MSB/multicolour state leaking between effects/transitions.
- Fixed stale carry in the font-morph colour path.
- Kept v2.4 filter clamp / drum-code fixes.

## Active effects

The active sequence remains the 10 Exotic VIC/SID effects.

## Build

```bash
cd mega/src
acme -f cbm -o ../build/exotic_megablast_v25.prg subway.s
x64sc -autostartprgmode 1 -autostart ../build/exotic_megablast_v25.prg
```
