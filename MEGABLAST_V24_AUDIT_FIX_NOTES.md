# Exotic Megablast Remix v2.4.0 — deep audit/fix pass

Base: v2.3.0.

## P0/P1 fixes

- Fixed `ClearScreenColor` to clear exactly the 1000-byte screen and colour matrices instead of overwriting the `$07f8-$07ff` sprite pointer slots.
- `ClearScreenColor` now also resets sprite enable/expand/priority and normal VIC text mode so transitions cannot inherit sprite/VIC state from exotic effects.
- Fixed `ExFillRow` stack imbalance. The old helper used `PLA/PHA` inside a loop and would corrupt the stack if called. It now stores the row character in `ex_tmp`.
- Fixed unsafe `$d016` writes in exotic effects. FLD/border/sprite simulations now keep normal 40-column text state and do not accidentally enable multicolor text mode.
- Rewrote `ex1_update` ghost-byte effect to be row-bounded. It no longer touches row 24 or the sprite pointer area.
- Fixed ADC carry sensitivity in visual routines where sprite Y positions and chroma row phase could drift due to stale carry.
- Fixed SID filter clamp: both the table+LFO add and the musicPulse add now saturate instead of wrapping into low cutoff/mud.
- Retuned bass waveform table so bass does not ring/sync against the drum voice. Ring/sync stays on V2 acid/lead where it is musically correct.
- Reworked drum code `6` so it no longer immediately overwrites the kick transient with noise. It is now an accented stomp/kick with added visual pulse energy.

## Validated

- 10 exotic active effects in `InitTbl` and `UpdateTbl`.
- 10 border/background/frame/card entries.
- 13 style tables are 11 entries each.
- Active Megablast remix sections `BerlinA`, `BerlinB`, `TechnoA`, `TechnoB`, `TechnoC` all have 6 tables of exactly 256 rows.
- Drum tables contain only legal codes 0..6.
- No duplicate global labels.
- No empty ACME directives.
- No uppercase inside `!scr` strings.

ACME is not installed in this sandbox, so real assembly must still be run locally.
