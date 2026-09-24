# v3.7.0 Expanded Improve

Implemented:
- Longer scene timing across all 10 active effects.
- Expanded music polish with journey `3..10`.
- First song part remains skipped.
- No ultrafast timing: style speeds remain 6..7 frames per row.
- `SelectStyle` speed guard remains active.
- Smoother resonance/filter/PWM movement.
- U glow expanded with inner glow and top shine.
- Stronger beat rails on high `musicPulse`, colour RAM only.

Build:
```bash
cd mega/src
make
```

Direct:
```bash
acme -f cbm -o ../build/exotic_megablast_v37.prg subway.s
```
