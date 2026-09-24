# Exotic VIC/SID Effects v2.0.0

Active effects are replaced by exactly these 10 parts:

1. `fld shunt` — safe dynamic FLD-shunt visual using per-row horizontal displacement plus VIC fine-scroll wobble.
2. `ghost byte` — pseudo bus/fetch glitch field with asynchronous digital noise.
3. `chroma blend` — scanline-style colour interlacing / chroma bleed.
4. `sprite split` — sprite multiplex/raster-split style: moving sprites with multicolor/hires and x-expand mode flips.
5. `borderless` — borderless/full-field pressure simulation with edge rails and VIC scroll-size modulation.
6. `sid bars` — SID/musicPulse-synced raster bars.
7. `y expand` — Y-expanded sprite stretch oscilloscope.
8. `font morph` — real-time font/character morph illusion.
9. `raster wave` — raster timing modulation style wave text.
10. `sprite mask` — hardware sprite priority masking / Z-buffer illusion.

Notes:
- Existing active dispatch has been replaced: `NUM_PARTS = 10`.
- Old effects remain in source as unused reference code, but they are not active.
- Sprite effects generate a safe sprite shape at `$0340` and use sprite pointer `$0d`.
- The most cycle-dangerous ideas are implemented as stable main-loop/VIC-safe approximations so the demo remains buildable and runnable without cycle-perfect IRQ fragility.
