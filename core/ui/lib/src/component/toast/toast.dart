import 'package:core_ui/src/component/toast/toast_data.dart';
import 'package:core_ui/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class Toast extends HookWidget {
  const Toast({
    required String message,
    required ToastType type,
    required Duration duration,
    required void Function() onDismissed,
    super.key,
  }) : _message = message,
       _type = type,
       _duration = duration,
       _onDismissed = onDismissed;

  final String _message;
  final ToastType _type;
  final Duration _duration;
  final VoidCallback _onDismissed;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(_duration, _onDismissed);
      return null;
    }, []);

    return Material(
      color: Colors.transparent,
      child: ToastContent(message: _message, type: _type),
    );
  }
}

final class ToastContent extends StatelessWidget {
  ToastContent({required String message, required ToastType type, super.key})
    : _message = message,
      _icon = switch (type) {
        ToastType.info => Icons.info,
        ToastType.success => Icons.check_circle,
        ToastType.warning => Icons.warning,
        ToastType.error => Icons.error,
      },
      _color = switch (type) {
        ToastType.info => Colors.blue,
        ToastType.success => Colors.green,
        ToastType.warning => Colors.amber,
        ToastType.error => Colors.red,
      };

  final IconData _icon;
  final Color _color;
  final String _message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(_icon, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(_message, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
