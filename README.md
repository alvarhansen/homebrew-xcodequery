# homebrew-xcodequery

This is the Homebrew tap for Xcode Query (`xcq`). It can be published as a separate repository at `alvarhansen/homebrew-xcodequery`.

## Install
- Recommended:
  - Stable (after a tagged release is set in the formula): `brew tap alvarhansen/xcodequery && brew install xcq`
  - HEAD (latest on main): `brew tap alvarhansen/xcodequery && brew install --HEAD xcq`

## Development
- Formula source lives at `Formula/xcq.rb` in this tap.
- The main repo also keeps a local formula at `HomebrewFormula/xcq.rb` for `--build-from-source` installs.
- On release:
  - Update `url` and `sha256` in `Formula/xcq.rb` to the new tag tarball.
  - Commit and push this tap (or sync this folder to the `alvarhansen/homebrew-xcodequery` repo).

## Notes
- Build requires Xcode (uses `swift build -c release`).
- Verify install with: `xcq --help`.

