import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_feed/src/gen/l10n/l10n.dart';
import 'package:feature_feed/src/ui/component/announcement_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnnouncementListScreen extends ConsumerWidget {
  const AnnouncementListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(
        title: Text(l10n.announcementListTitle),
      ),
      body: _buildBody(context, ref),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    // TODO: Replace with actual data from provider
    final announcements = _getMockAnnouncements();

    if (announcements.isEmpty) {
      return Center(
        child: Text(
          l10n.announcementEmptyMessage,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        // TODO: Implement refresh logic
        await Future<void>.delayed(const Duration(seconds: 1));
      },
      child: ListView.separated(
        padding: const EdgeInsets.all(TobeSpace.m),
        itemCount: announcements.length,
        separatorBuilder: (context, index) => const Gap(TobeSpace.s),
        itemBuilder: (context, index) {
          final announcement = announcements[index];
          return AnnouncementCard(
            title: announcement['title']!,
            description: announcement['description']!,
            type: announcement['type']!,
            date: announcement['date']!,
            isNew: announcement['isNew'] == 'true',
          );
        },
      ),
    );
  }

  // TODO: Remove mock data and use actual provider
  List<Map<String, String>> _getMockAnnouncements() {
    return [
      {
        'title': 'New Feature: Quest Sharing',
        'description': 'You can now share your quests with friends and family!',
        'type': 'update',
        'date': '2024-05-28',
        'isNew': 'true',
      },
      {
        'title': 'Scheduled Maintenance',
        'description':
            'The app will be under maintenance on June 1st from 2:00 AM to '
                '4:00 AM JST.',
        'type': 'warning',
        'date': '2024-05-25',
        'isNew': 'false',
      },
      {
        'title': 'Welcome to TOBE!',
        'description':
            'Thank you for joining us on this journey to be your true self.',
        'type': 'info',
        'date': '2024-05-20',
        'isNew': 'false',
      },
    ];
  }
}
