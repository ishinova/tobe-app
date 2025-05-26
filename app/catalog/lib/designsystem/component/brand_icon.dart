import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'BrandIcon',
  type: BrandIcon,
  path: '[DesignSystem]/components',
)
Widget tobeScaffoldUseCase(BuildContext context) {
  return const BrandIcon(width: 200, height: 200);
}
