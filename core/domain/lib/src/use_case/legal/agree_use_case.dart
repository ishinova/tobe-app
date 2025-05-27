import 'package:core_common/anyhow.dart';
import 'package:core_data/legal.dart';
import 'package:core_model/rule.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agree_use_case.g.dart';

/// 同意する
@riverpod
Raw<FutureResult<void>> agreeUseCase(
  Ref ref, {
  required RuleVersion agreeRuleVersion,
}) async {
  return await ref
          .watch(legalRepositoryProvider)
          .setAgreeVersion(version: agreeRuleVersion)
      ? const Ok(null)
      : Exception('Failed to agree.').toErr();
}
