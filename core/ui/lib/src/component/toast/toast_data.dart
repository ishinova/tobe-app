import 'package:freezed_annotation/freezed_annotation.dart';

part 'toast_data.freezed.dart';

/// トーストのデータ
@freezed
abstract class ToastData with _$ToastData {
  const factory ToastData({
    required String id,
    required String message,
    required ToastType type,
    required Duration duration,
    required DateTime createdAt,
  }) = _ToastData;
}

/// トーストの種類
///
/// {@category Model}
enum ToastType {
  /// 情報
  info,

  /// 成功
  success,

  /// 警告
  warning,

  /// エラー
  error,
}
