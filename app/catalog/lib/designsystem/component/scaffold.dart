import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'TobeScaffold',
  type: TobeScaffold,
  path: '[DesignSystem]/components',
)
Widget tobeScaffoldUseCase(BuildContext context) {
  return TobeScaffold(
    appBar: TobeAppBar(
      title: Text(
        context.knobs.string(
          label: 'AppBar Title',
          initialValue: 'TobeScaffold',
        ),
      ),
    ),
    body: Center(
      child: Text(
        context.knobs.string(label: 'Body Text', initialValue: 'TobeScaffold'),
      ),
    ),
  );
}
