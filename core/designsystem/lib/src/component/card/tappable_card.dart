import 'package:flutter/material.dart';

final class TappableCard extends StatelessWidget {
  const TappableCard({
    required GestureTapCallback onTap,
    super.key,
    Widget? child,
  }) : _onTap = onTap,
       _child = child;

  final GestureTapCallback _onTap;
  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: InkWell(onTap: _onTap, borderRadius: borderRadius, child: _child),
    );
  }
}
