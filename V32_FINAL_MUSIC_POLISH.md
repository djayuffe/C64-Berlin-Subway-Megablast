# v3.2.0 final music/effect polish

Implemented final pass from v3.1.0:

- Expanded the active song journey from 7 sections to 9 sections: `BerlinA`, `BerlinB`, `TechnoA`, `TechnoB`, `TechnoC`, `AcidA`, `AcidB`, `TranceA`, `TranceB`.
- Enabled `TranceA` and `TranceB` in the runtime loop (`curSong` now cycles 2..10).
- Regenerated all 9 active sections: `Bass`, `Arp0`, `Arp1`, `Arp2`, `Drum`, `Filt`.
- Added `StyleSwingTbl` and runtime micro-swing, delaying odd rows by one frame only in selected sections.
- Retuned SID style tables for cleaner intro, tighter drive, acid pressure, and final combined-wave rave peak.
- Reworked bass into a more gated techno line with phrase-end octave fills.
- Reworked Megablast hook and answer phrases across all arp voices.
- Reworked drums with controlled kick/hat/clap/openhat/accent/stomp progression.
- Reworked filter tables as phrase-aware rising acid arcs, clamped to `$f0`.

ACME was not available in this sandbox, so the package includes static audit only.
