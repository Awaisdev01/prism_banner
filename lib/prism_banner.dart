/// Dismissible in-app announcement banners for Flutter.
///
/// Part of the Prism package family:
///
/// - [prism_markdown](https://pub.dev/packages/prism_markdown)
/// - [prism_code_view](https://pub.dev/packages/prism_code_view)
/// - [prism_adaptive_scaffold](https://pub.dev/packages/prism_adaptive_scaffold)
/// - [prism_adaptive_dialog](https://pub.dev/packages/prism_adaptive_dialog)
/// - [prism_state_views](https://pub.dev/packages/prism_state_views)
/// - [prism_master_detail](https://pub.dev/packages/prism_master_detail)
library;

export 'src/announcement.dart' show PrismAnnouncement, PrismSeverity;
export 'src/banner.dart'
    show PrismBanner, PrismBannerPriority, PrismBannerStyle;
export 'src/store.dart'
    show BannerDismissStore, InMemoryDismissStore, SharedPrefsDismissStore;
