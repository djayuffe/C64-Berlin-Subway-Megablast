# v2.9.0 music improvement pass

Focus: make the Megablast remix sound more musical and less muddy while keeping the Exotic 10-effect visual release intact.

## Music changes
- Regenerated the five active song sections used by `curSong` styles 2..6:
  - `BerlinA` intro filtered hook
  - `BerlinB` rolling drive
  - `TechnoA` ringmod acid
  - `TechnoB` sync lead peak
  - `TechnoC` combined rave peak
- Rebuilt all active tables for each section:
  - Bass
  - Arp0
  - Arp1
  - Arp2
  - Drum
  - Filter
- Restored a stronger Megablast identity with recurring hook/answer phrases instead of silent arp sections.
- Tightened bass into real gated techno patterns with rests preserved.
- Improved progression: intro -> drive -> acid -> sync peak -> rave peak.
- Reworked drums with cleaner energy curve, offbeat open hats, phrase fills, accent kicks, and stomp hits.

## SID engine retune
- Style tables retuned for smoother flow and less mud:
  - safer PWM centers
  - smoother PWM speeds
  - smoother filter LFO speeds
  - high resonance reserved for peak sections
  - cleaner LP/BP/HP colour distribution
- `TV_MusFilter` now adds `musicPulse/2` instead of full `musicPulse` for beat bite. This keeps attack movement but avoids harsh cutoff slams and muddy wrap pressure.
- Added `TV_FilterTmp` scratch byte for safe subtler filter accumulation.

## Audit
- 10 exotic effects still active.
- 11 song/style pointer entries intact.
- 13 style tables have 11 entries.
- All five active remix sections have 6 tables of 256 rows.
- Drum values stay within `0..6`.
- Note values stay within `0..95` or `$ff` rest.
- Filter values stay <= `$f0`.
- No duplicate global labels.
- No empty ACME directives.
- No uppercase inside `!scr`.

ACME was not available in the sandbox, so build locally with:

```bash
cd mega/src
make
```
