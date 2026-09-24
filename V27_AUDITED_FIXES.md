# v2.7.0 audited fixes

Base: v2.6.0 buildfix.

## Fixed / cleaned

- Removed stale inactive vortex code/data from the source:
  - `vx_init`
  - `vx_update`
  - `VortexBase`
  - `VxRowLo/Hi`
- Removed stale inactive neon-wire wrapper code/data from the source:
  - `nw_init`
  - `nw_update`
  - `NfxWireTitle`
  - old `NfxWireRows/Chars/Colors` placeholder tables
- Fixed `ti_update` colour-cycle indexing:
  - `ColorCycle` is 128 bytes.
  - the old title colour path could index past it if re-enabled.
  - now masks with `and #$7f` before `lda ColorCycle,y`.
- Aligned `PartStyleTbl` with `NUM_PARTS = 10` to remove stale 11-entry mismatch.
- Cleaned stale comments around active 10-effect tables.
- Updated Makefile/build script output names to v27.

## Audits

- Deep source audit: PASS.
- Branch-range static audit: PASS, 279 conditional branches checked, 0 range problems found.
- Active dispatch: 10 init + 10 update entries.
- Active frame/border/bg/card tables: 10 entries each.
- Music style tables: 13 tables × 11 entries.
- Active remix sections: 5 sections × 6 tables × 256 rows.
- Drum values verified in range 0..6.
- No duplicate global labels.
- No empty ACME directives.
- No uppercase inside `!scr` strings.

Note: ACME is not installed in this sandbox, so final binary build must still be run locally.
