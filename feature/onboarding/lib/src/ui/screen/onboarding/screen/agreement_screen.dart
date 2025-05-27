import 'package:core_common/anyhow.dart';
import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:core_domain/legal.dart';
import 'package:core_model/rule.dart';
import 'package:feature_onboarding/src/gen/assets/assets.gen.dart';
import 'package:feature_onboarding/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

/// 同意して始める画面
final class AgreementScreen extends ConsumerWidget {
  const AgreementScreen({required VoidCallback onAgreeAndContinue, super.key})
    : _onAgreeAndContinue = onAgreeAndContinue;

  final VoidCallback _onAgreeAndContinue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(TobeSpace.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...[
              Text(
                l10n.agreeAndStart,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Lottie.asset(Assets.lottie.torch, width: 250, height: 250),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () async {
                    switch (await ref.read(
                      agreeUseCaseProvider(agreeRuleVersion: RuleVersion(1)),
                    )) {
                      case Ok():
                        _onAgreeAndContinue();
                      case Err():
                        // TODO: エラー処理
                        break;
                    }
                  },
                  child: Text(l10n.agreeAndStart),
                ),
              ),
            ].expand((widget) => [widget, const Gap(TobeSpace.m)]),
          ],
        ),
      ),
    );
  }
}
