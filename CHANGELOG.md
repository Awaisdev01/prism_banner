# Changelog

## 0.1.0

- Initial release.
- `PrismBanner` — renders the first eligible announcement as a dismissible
  banner; collapses to nothing when none apply.
- `PrismAnnouncement` — id + version based re-show semantics, scheduling
  (`startsAt`/`endsAt`), severities, and optional action button.
- `PrismBannerPriority` — newest / oldest / severity selection.
- Pluggable `BannerDismissStore` with `shared_preferences` default and an
  in-memory implementation for tests.