# LeanLingo exercises

All 405 questions and 20 practice exercises from
[LeanLingo](https://leanlingo.org) ported into one Lean 4 file, so you can work
through them in your editor.

## Setup

Everything is pinned: the Nix flake provides elan (`flake.lock`), elan
installs the Lean release in `lean-toolchain`, and `lake-manifest.json` pins
Mathlib.

```sh
nix develop          # or: direnv allow (uses .envrc)
lake exe cache get   # first time only: downloads prebuilt Mathlib
lake build           # passes; each unfilled `sorry` shows as a warning
```

Run `lake exe cache get` before opening the editor. If you skip it, the
editor starts building Mathlib from source, which takes hours.

Open the folder in VS Code with the Lean 4 extension. Start it from inside
`nix develop` so it uses the pinned `lean`.

## Working through it

- `LeanLingo/Exercises.lean` has every question, grouped by world, unit and
  lesson, with a link to the book section it comes from.
  - Quiz questions are comments. Write your answer on the `-- your answer:` line.
  - "Predict the output" code is commented out. Guess first, then uncomment it
    to check.
  - Each world ends with a practice exercise. Replace each `sorry`, then
    uncomment the `-- #eval` checks. Lean won't run `#eval` on code that still
    contains `sorry`.
- `LeanLingo/Answers.lean` has the answers and explanations, keyed by question
  id (for example `w1-u1-l1-b`).

## Regenerating

`node scripts/port.mjs` fetches LeanLingo's data at a pinned commit and
rewrites both files. This overwrites your answers, so commit them first.

## Credits

The questions come from [LeanLingo](https://github.com/kjusino/leanlingo)
by Kenneth Jusino, MIT licensed (see `THIRD_PARTY_LICENSE`). LeanLingo's
content is based on the official Lean books: *Functional Programming in Lean*
and *Theorem Proving in Lean 4*.
