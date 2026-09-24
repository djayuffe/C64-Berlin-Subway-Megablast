# v3.0 effect + music improvement pass

## Effects
- Added beat-colour side rails in `ExPostFrame`, colour RAM only, no screen-char overwrite.
- Improved chroma-blend effect so scanline colours are driven by `musicPulse` rather than a fixed two-colour pair.
- Kept sprite pointer restoration for sprite effects after row-24 scroller redraw.
- Kept v2.8 cleanup: old unreachable legacy effect block remains removed.

## Music
- Expanded active song cycle from five sections (`2..6`) to seven sections (`2..8`).
- Regenerated and tuned these 7 sections: `BerlinA`, `BerlinB`, `TechnoA`, `TechnoB`, `TechnoC`, `AcidA`, `AcidB`.
- Each section has full 256-row `Bass`, `Arp0`, `Arp1`, `Arp2`, `Drum`, and `Filt` tables.
- The Megablast hook is retained but distributed as intro call, drive response, acid variation, sync peak, rave peak, and final two acid/finale sections.
- Bass grooves are more gated and harmonic-root aware.
- Drums use only engine-supported codes `0..6`: rest, kick, hat, clap/snare, accent kick, open hat, stomp.
- Filter tables stay clamped at `$f0` and phrase-open at bar endings.

## Audit
See `V30_DEEP_AUDIT.json`. Static audit passes for dispatch, table sizes, notes, drums, filters, labels, and directives. ACME is still not installed in this sandbox, so local ACME validation is required.
