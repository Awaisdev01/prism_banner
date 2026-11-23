# prism_banner

Dismissible in-app announcement banners for Flutter — release notes, promos,
and maintenance notices with persistence, scheduling, and full theming.

Part of the **Prism** package family.

## Features

- ✅ One widget: `PrismBanner` collapses to nothing when there's nothing to show
- ✅ Persistence — dismissals survive app restarts (pluggable store)
- ✅ Version-aware — bump an announcement's `version` to re-show it to users
  who already dismissed it
- ✅ Scheduling — `startsAt` / `endsAt` windows
- ✅ Severity levels — info, success, warning, error with Material 3 colors
- ✅ Priority selection when multiple announcements compete
- ✅ Optional action button with callback
- ✅ Pure Flutter, all six platforms

## Installation

```yaml
dependencies:
  prism_banner: ^0.1.0
```

## Quick start

```dart
Column(
  children: [
    PrismBanner(
      announcements: [
        const PrismAnnouncement(
          id: 'release-2-1',
          title: 'New in 2.1',
          message: 'Dark mode, faster sync, and keyboard shortcuts.',
          actionLabel: 'See what’s new',
        ),
      ],
    ),
    // …the rest of your page…
  ],
)
```

## Re-showing an updated announcement

Users who dismissed `release-2-1` won't see it again — unless you bump the
version:

```dart
const PrismAnnouncement(
  id: 'release-2-1',   // same id
  version: 2,          // bump → everyone sees it again
  message: 'Updated: 2.1.1 fixes sync on iPad!',
)
```

## Custom storage

```dart
PrismBanner(
  announcements: myAnnouncements,
  store: MyFirebaseDismissStore(), // implements BannerDismissStore
)
```

## Scheduling

```dart
const PrismAnnouncement(
  id: 'maintenance',
  message: 'Downtime Sunday 02:00 UTC.',
  severity: PrismSeverity.warning,
  startsAt: null, // or a fixed DateTime
  endsAt: null,
)
```

## The Prism package family

| Package | What it does |
| --- | --- |
| [prism_markdown](https://pub.dev/packages/prism_markdown) | Markdown widget with full CommonMark + GFM support |
| [prism_code_view](https://pub.dev/packages/prism_code_view) | Syntax-highlighted code viewer (Dart/JSON/YAML built in) |
| [prism_adaptive_scaffold](https://pub.dev/packages/prism_adaptive_scaffold) | Responsive scaffolds: bottom bar → rail → extended rail |
| [prism_adaptive_dialog](https://pub.dev/packages/prism_adaptive_dialog) | Dialogs that become bottom sheets on phones |
| [prism_state_views](https://pub.dev/packages/prism_state_views) | Empty, loading, error, and success states from one widget |
| [prism_master_detail](https://pub.dev/packages/prism_master_detail) | Adaptive master-detail layouts |
| **prism_banner** | Dismissible announcement banners |

All pure Flutter, all six platforms, MIT licensed, built to work together.

## License

MIT — see [LICENSE](LICENSE).