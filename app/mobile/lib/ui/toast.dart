import 'package:core_designsystem/component.dart';
import 'package:core_ui/toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final toastListKey = GlobalKey<AnimatedListState>();

final class ToastContainer extends ConsumerWidget {
  const ToastContainer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toasts = ref.watch(toasterProvider);

    return IgnorePointer(
      child: AnimatedList(
        key: toastListKey,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        initialItemCount: toasts.length,
        itemBuilder: (context, index, animation) {
          final toast = toasts[index];
          final key = ValueKey(toast.id);

          return Column(
            key: key,
            children: [
              SlideTransition(
                position:
                    Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut,
                      ),
                    ),
                child: Toast(
                  key: key,
                  message: toast.message,
                  type: toast.type,
                  duration: toast.duration,
                  onDismissed: () {
                    ref.read(toasterProvider.notifier).removeToast(toast.id);
                  },
                ),
              ),
              const Gap(8),
            ],
          );
        },
      ),
    );
  }
}
