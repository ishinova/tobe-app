import 'package:freezed_annotation/freezed_annotation.dart';

part 'rule.freezed.dart';

// 利用規約バージョン
extension type RuleVersion(int value) implements int {}

/// 利用規約
///
/// {@category Model}
@freezed
abstract class Rule with _$Rule {
  const factory Rule({required RuleVersion version, required String content}) =
      _Rule;
}
