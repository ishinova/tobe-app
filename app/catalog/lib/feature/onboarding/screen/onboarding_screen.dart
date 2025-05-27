import 'package:feature_onboarding/feature_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'OnboardingScreen',
  type: OnboardingScreen,
  path: '[Feature]/onboarding',
)
OnboardingScreen onboardingScreenUseCase(BuildContext context) {
  return OnboardingScreen(onPopInvoked: () {}, onAgreeAndContinue: () {});
}
