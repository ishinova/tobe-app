import 'package:core_ui/src/component/toast/toast_data.dart';
import 'package:core_ui/toast.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toaster.g.dart';

@Riverpod(keepAlive: true)
GlobalKey<AnimatedListState> toastListKey(Ref ref) {
  throw UnimplementedError('toastListKey');
}

@riverpod
class Toaster extends _$Toaster {
  @override
  List<ToastData> build() => [];

  void showToast(
    String message, {
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 4),
  }) {
    final createdAt = DateTime.now();
    final toast = ToastData(
      id: createdAt.millisecondsSinceEpoch.toString(),
      message: message,
      type: type,
      duration: duration,
      createdAt: createdAt,
    );
    state = [...state, toast];
    ref.read(toastListKeyProvider).currentState?.insertItem(state.length - 1);
  }

  void removeToast(String id) {
    final index = state.indexWhere((toast) => toast.id == id);

    state = state.where((toast) => toast.id != id).toList();
    ref
        .read(toastListKeyProvider)
        .currentState
        ?.removeItem(index, (context, animation) => const SizedBox.shrink());
  }
}
