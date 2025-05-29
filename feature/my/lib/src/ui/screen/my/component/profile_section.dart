import 'package:core_designsystem/space.dart';
import 'package:core_model/auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({required this.user, super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(TobeSpace.m),
        child: Column(
          children: [
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: theme.colorScheme.primaryContainer,
              child: Text(
                _getInitials(user.email),
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            const Gap(TobeSpace.m),

            // Email
            Text(
              user.email,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getInitials(String email) {
    if (email.isEmpty) {
      return '?';
    }

    // Use first character of email
    return email.substring(0, 1).toUpperCase();
  }
}
