# v2.8.0 audited/fixed

Fixes applied:

- Removed unreachable legacy `NEW EFFECTS` block after the active exotic suite.
  - This eliminates stale inactive code, duplicate-local-label risk, and major size/branch pressure.
- Fixed sprite/scroller overlap during sprite effects.
  - `$07f8-$07ff` must contain sprite pointers, but those bytes are also visible row-24 screen cells.
  - `ExPostFrame` now restores sprite pointers and blacks their colour RAM cells so pointer glyphs do not appear as scroller garbage.
- Removed duplicate `clc` in `ex1_update`.
- Updated build output to `exotic_megablast_v28.prg`.

Audit result: **PASS**

Key checks:

- NUM_PARTS: 10
- InitTbl: 10
- UpdateTbl: 10
- Part frame/border/bg/style/card entries: 10 each
- Style/song tables: 11 entries each
- Active remix tables: 5 sections x 6 tables x 256 rows
- Sprite data: 64 bytes
- Branch range audit: 0 issues
- ACME: not run - acme not installed in sandbox
