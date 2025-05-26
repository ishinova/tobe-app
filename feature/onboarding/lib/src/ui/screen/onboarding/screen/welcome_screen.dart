import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_onboarding/src/gen/assets/assets.gen.dart';
import 'package:feature_onboarding/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// ウェルカム画面
final class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(TobeSpace.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...[
              Text(
                l10n.welcome,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Lottie.asset(Assets.lottie.workout, width: 250, height: 250),
              Text(
                l10n.welcome,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ].expand((widget) => [widget, const Gap(TobeSpace.m)]),
          ],
        ),
      ),
    );
  }
}
