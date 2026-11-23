import 'package:flutter/material.dart';
import 'package:prism_banner/prism_banner.dart';

/// Demo app for prism_banner.
void main() => runApp(const DemoApp());

/// Root widget showing banner variants.
class DemoApp extends StatelessWidget {
  /// Creates the demo.
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('prism_banner demo')),
        body: Column(
          children: [
            PrismBanner(
              announcements: const [
                PrismAnnouncement(
                  id: 'release-2-1',
                  title: 'New in 2.1',
                  message: 'Dark mode, faster sync, and keyboard shortcuts.',
                  actionLabel: 'See what’s new',
                ),
                PrismAnnouncement(
                  id: 'maintenance',
                  message: 'Scheduled maintenance Sunday 02:00–03:00 UTC.',
                  severity: PrismSeverity.warning,
                ),
              ],
              priority: PrismBannerPriority.severity,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'App content',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
