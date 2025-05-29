import 'dart:async';

import 'package:core_authenticator/authenticator.dart';
import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:core_domain/auth_use_case.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/auth.dart';
import 'package:core_model/quest.dart';
import 'package:feature_my/src/gen/l10n/l10n.dart';
import 'package:feature_my/src/ui/screen/my/component/profile_section.dart';
import 'package:feature_my/src/ui/screen/my/component/quest_statistics_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyScreen extends ConsumerWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = FeatureMyL10n.of(context);
    final authenticator = ref.watch(authenticatorProvider);
    final questCount = ref.watch(questCountStreamUseCaseProvider);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n?.myPageTitle ?? 'My Page')),
      body: switch (authenticator.authState) {
        AuthStateAuthenticated(:final user) => _buildContent(
          context,
          ref,
          user,
          questCount.valueOrNull ??
              const QuestCount(
                backlog: 0,
                ready: 0,
                inProgress: 0,
                suspend: 0,
                completed: 0,
                abort: 0,
              ),
        ),
        AuthStateUnauthenticated() => const SizedBox.shrink(),
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    User user,
    QuestCount questCount,
  ) {
    final l10n = FeatureMyL10n.of(context);
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(TobeSpace.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          ProfileSection(user: user),
          const Gap(TobeSpace.l),

          // Quest Statistics
          QuestStatisticsSection(questCount: questCount),
          const Gap(TobeSpace.xl),

          // Action Menu
          Text(
            l10n?.myPageProfile ?? 'Profile',
            style: theme.textTheme.titleMedium,
          ),
          const Gap(12),
          _buildActionMenu(context, ref),
        ],
      ),
    );
  }

  Widget _buildActionMenu(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = FeatureMyL10n.of(context);

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: Text(l10n?.myPageEditProfile ?? 'Edit Profile'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // TODO: Navigate to edit profile screen
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: Text(l10n?.myPageSettings ?? 'Settings'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              unawaited(context.pushNamed('settings'));
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: Text(l10n?.myPageHelp ?? 'Help'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // TODO: Navigate to help screen
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: Icon(Icons.logout, color: theme.colorScheme.error),
            title: Text(
              l10n?.myPageLogout ?? 'Log Out',
              style: TextStyle(color: theme.colorScheme.error),
            ),
            onTap: () async {
              await _showLogoutDialog(context, ref);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _showLogoutDialog(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        final dialogL10n = FeatureMyL10n.of(context);
        return AlertDialog(
          title: Text(dialogL10n?.myPageLogout ?? 'Log Out'),
          content: Text(
            dialogL10n?.myPageLogoutConfirmationMessage ??
                'Are you sure you want to log out?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(dialogL10n?.myPageCancel ?? 'Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(dialogL10n?.myPageLogoutButton ?? 'Log Out'),
            ),
          ],
        );
      },
    );

    if (confirmed ?? false) {
      await ref.read(signOutUseCaseProvider);
      if (context.mounted) {
        context.go('/auth');
      }
    }
  }
}
