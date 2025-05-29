import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_announcement/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    required this.title,
    required this.description,
    required this.type,
    required this.date,
    super.key,
    this.isNew = false,
  });

  final String title;
  final String description;
  final String type;
  final String date;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TappableCard(
      onTap: () {
        // TODO: Navigate to announcement detail
      },
      child: Padding(
        padding: const EdgeInsets.all(TobeSpace.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildTypeChip(context),
                const Spacer(),
                if (isNew) _buildNewBadge(context),
              ],
            ),
            const Gap(TobeSpace.xs),
            Text(title, style: theme.textTheme.titleMedium),
            const Gap(TobeSpace.xs),
            Text(
              description,
              style: theme.textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(TobeSpace.s),
            Text(
              date,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTypeChip(BuildContext context) {
    final theme = Theme.of(context);
    final typeData = _getTypeData(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TobeSpace.s,
        vertical: TobeSpace.xs,
      ),
      decoration: BoxDecoration(
        color: typeData['color'] as Color,
        borderRadius: BorderRadius.circular(TobeSpace.xs),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            typeData['icon'] as IconData,
            size: 16,
            color: typeData['textColor'] as Color,
          ),
          const Gap(TobeSpace.xs),
          Text(
            typeData['label'] as String,
            style: theme.textTheme.labelSmall?.copyWith(
              color: typeData['textColor'] as Color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewBadge(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = FeatureAnnouncementL10n.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TobeSpace.s,
        vertical: TobeSpace.xs,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(TobeSpace.xs),
      ),
      child: Text(
        l10n?.announcementNewBadge ?? 'NEW',
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Map<String, dynamic> _getTypeData(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = FeatureAnnouncementL10n.of(context);

    switch (type) {
      case 'info':
        return {
          'icon': Icons.info_outline,
          'label': l10n?.announcementTypeInfo ?? 'Information',
          'color': theme.colorScheme.primaryContainer,
          'textColor': theme.colorScheme.onPrimaryContainer,
        };
      case 'warning':
        return {
          'icon': Icons.warning_amber_outlined,
          'label': l10n?.announcementTypeWarning ?? 'Important',
          'color': theme.colorScheme.errorContainer,
          'textColor': theme.colorScheme.onErrorContainer,
        };
      case 'update':
        return {
          'icon': Icons.system_update_outlined,
          'label': l10n?.announcementTypeUpdate ?? 'Update',
          'color': theme.colorScheme.tertiaryContainer,
          'textColor': theme.colorScheme.onTertiaryContainer,
        };
      default:
        return {
          'icon': Icons.info_outline,
          'label': l10n?.announcementTypeInfo ?? 'Information',
          'color': theme.colorScheme.surfaceContainerHighest,
          'textColor': theme.colorScheme.onSurfaceVariant,
        };
    }
  }
}
