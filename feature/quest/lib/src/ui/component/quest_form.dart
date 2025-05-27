import 'package:core_designsystem/component.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef SubmitCallback =
    void Function(String title, String description, String note);

final class QuestForm extends HookConsumerWidget {
  const QuestForm({
    required SubmitCallback onSubmit,
    String? title,
    String? description,
    String? note,
    super.key,
  }) : _title = title,
       _description = description,
       _note = note,
       _onSubmit = onSubmit;

  final String? _title;
  final String? _description;
  final String? _note;
  final SubmitCallback _onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final titleController = useTextEditingController(text: _title);
    final titleValue = useValueListenable(titleController);

    final descriptionController = useTextEditingController(text: _description);
    final descriptionValue = useValueListenable(descriptionController);

    final noteController = useTextEditingController(text: _note);
    final noteValue = useValueListenable(noteController);

    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Form(
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
                      labelText: l10n.questAddFormTitleLabel,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.questAddFormTitleEmptyErrorMessage;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: descriptionController,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter quest description',
                      labelText: l10n.questAddFormDescriptionLabel,
                    ),
                  ),
                  TextFormField(
                    controller: noteController,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter quest note',
                      labelText: l10n.questAddFormNoteLabel,
                    ),
                  ),

                  const Gap(0),
                  // クエスト追加
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }

                        _onSubmit(
                          titleValue.text,
                          descriptionValue.text,
                          noteValue.text,
                        );
                      },
                      child: Text(l10n.questAddFormSubmit),
                    ),
                  ),
                ].expand((widget) => [widget, const Gap(24)]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
