import 'package:core_model/src/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

/// 認証状態
///
/// {@category Model}
@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = AuthStateUnauthenticated;

  const factory AuthState.authenticated({required User user}) =
      AuthStateAuthenticated;
}
