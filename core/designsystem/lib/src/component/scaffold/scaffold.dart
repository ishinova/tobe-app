import 'package:flutter/material.dart';

final class TobeScaffold extends StatelessWidget {
  const TobeScaffold({
    super.key,
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
  }) : _appBar = appBar,
       _body = body,
       _floatingActionButtonLocation = floatingActionButtonLocation,
       _floatingActionButton = floatingActionButton;

  final PreferredSizeWidget? _appBar;
  final Widget? _body;

  final Widget? _floatingActionButton;
  final FloatingActionButtonLocation? _floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: _appBar,
    body: _body,
    floatingActionButton: _floatingActionButton,
    floatingActionButtonLocation: _floatingActionButtonLocation,
  );
}
