import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

typedef UserId = String;

/// ユーザー
///
/// {@category Model}
@freezed
class User with _$User {
  const factory User({required UserId id, required String email}) = _User;
}
