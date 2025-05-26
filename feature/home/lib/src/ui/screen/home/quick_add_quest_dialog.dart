import 'package:core_designsystem/component.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエストクイック追加ダイアログ
final class QuickAddQuestDialog extends HookConsumerWidget {
  const QuickAddQuestDialog({required VoidCallback onClose, super.key})
    : _onClose = onClose;

  final VoidCallback _onClose;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final titleController = useTextEditingController();
    final titleValue = useValueListenable(titleController);

    final descriptionController = useTextEditingController();
    final descriptionValue = useValueListenable(descriptionController);

    final noteController = useTextEditingController();
    final noteValue = useValueListenable(noteController);

    final formKey = useMemoized(GlobalKey<FormState>.new);

    return AlertDialog(
      title: Text(l10n.homeQuickAddQuestDialogAppBarTitle),
      content: Form(
        key: formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: AutofillGroup(
              child: Column(
                children: [
                  ...[
                    TextFormField(
                      controller: titleController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter quest title',
                        labelText: l10n.homeQuickAddQuestDialogTitleLabel,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return l10n
                              .homeQuickAddQuestDialogTitleEmptyErrorMessage;
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: descriptionController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter quest description',
                        labelText: l10n.homeQuickAddQuestDialogDescriptionLabel,
                      ),
                    ),
                    TextFormField(
                      controller: noteController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Enter quest note',
                        labelText: l10n.homeQuickAddQuestDialogNoteLabel,
                      ),
                    ),
                  ].expand((widget) => [widget, const Gap(24)]),
                ],
              ),
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _onClose,
          child: Text(l10n.homeQuickAddQuestDialogNegative),
        ),
        TextButton(
          onPressed: () async {
            if (!formKey.currentState!.validate()) {
              return;
            }

            await ref.read(
              addQuestUseCaseProvider(
                title: titleValue.text,
                description: descriptionValue.text,
                note: noteValue.text,
              ),
            );

            _onClose();
          },
          child: Text(l10n.homeQuickAddQuestDialogPositive),
        ),
      ],
    );
  }
}
