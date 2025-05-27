import 'package:core_designsystem/component.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:core_ui/toast.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:feature_quest/src/ui/component/quest_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト追加画面
final class QuestAddScreen extends HookConsumerWidget {
  const QuestAddScreen({required VoidCallback onAddQuestCompleted, super.key})
    : _onAddQuestCompleted = onAddQuestCompleted;

  final VoidCallback _onAddQuestCompleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final isSubmitting = useState(false);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.questAddAppBarTitle)),
      body: SafeArea(
        child: Stack(
          children: [
            QuestForm(
              onSubmit: (title, description, note) async {
                isSubmitting.value = true;

                final result = await ref.read(
                  addQuestUseCaseProvider(
                    title: title,
                    description: description,
                    note: note,
                  ),
                );

                final toaster = ref.read(toasterProvider.notifier);
                result.match(
                  ok: (_) {
                    toaster.showToast('クエストを追加しました', type: ToastType.success);
                    _onAddQuestCompleted();
                  },
                  err: (error) => toaster.showToast(
                    'クエストの追加に失敗しました',
                    type: ToastType.error,
                  ),
                );

                isSubmitting.value = false;
              },
            ),
            // プログレスバーを表示
            Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isSubmitting.value
                    ? const CircularProgressIndicator()
                    : const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
