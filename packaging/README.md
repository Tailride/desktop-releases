# Packaging manifests

Ready-to-submit manifests for the package managers people use to find desktop
apps. Both are generated for the current release and must be regenerated
(new version, new SHA-256) on every release before submission.

| Manager | Path | Submit to |
| --- | --- | --- |
| Homebrew cask (`brew install --cask tailride`) | `homebrew/tailride.rb` | https://github.com/Homebrew/homebrew-cask (PR) — or host in a `Tailride/homebrew-tap` repo for `brew tap tailride/tap` |
| winget (`winget install Tailride.Tailride`) | `winget/Tailride/Tailride/<version>/` | https://github.com/microsoft/winget-pkgs (PR via `wingetcreate`) |

## Before submitting

- **Signed and notarized builds.** homebrew-cask accepts unsigned apps but
  flags them; winget-pkgs validation runs the installer through Defender
  SmartScreen and rejects installers that trigger it. Ship signed builds first.
- Check the checksums against the release assets:
  `shasum -a 256 Tailride-<version>-universal.dmg` etc.
- Homebrew wants the app to be **stable** — no auto-update marker changes
  between the cask's URL and the running app. `auto_updates true` tells brew
  not to upgrade a copy the app has already updated itself.
- winget's `PackageIdentifier` (`Tailride.Tailride`) and publisher name must
  match the certificate subject once builds are signed.

## Regenerate

```bash
# checksums for the current release
for f in Tailride-X.Y.Z-universal.dmg Tailride-Setup-X.Y.Z.exe; do
  curl -sLO "https://github.com/Tailride/desktop-releases/releases/download/vX.Y.Z/$f"; shasum -a 256 "$f"; done
# winget: wingetcreate update Tailride.Tailride -u <installer urls> -v X.Y.Z
```
