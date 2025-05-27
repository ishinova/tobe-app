import 'package:feature_auth/feature_auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'AuthScreen',
  type: AuthScreen,
  path: '[Feature]/auth',
)
AuthScreen authScreenUseCase(BuildContext context) {
  return AuthScreen(onLoginSuccess: () {});
}
