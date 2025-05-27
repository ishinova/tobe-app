import 'package:core_authenticator/authenticator.dart';
import 'package:core_domain/src/use_case/auth/sign_in_use_case.dart';
import 'package:core_testing/core_testing.dart';
import 'package:test/test.dart';

class MockAuthenticator extends Mock implements Authenticator {}

void main() {
  group('signInUseCase', () {
    final mockAuthenticator = MockAuthenticator();

    final container = ProviderContainer(
      overrides: [authenticatorProvider.overrideWithValue(mockAuthenticator)],
    );

    test('有効な電子メールとパスワードでサインイン', () async {
      when(
        () => mockAuthenticator.signInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async {});

      await container.read(
        signInUseCaseProvider(
          email: 'test@example.com',
          password: 'password123',
        ),
      );

      verify(
        () => mockAuthenticator.signInWithEmailAndPassword(
          email: 'test@example.com',
          password: 'password123',
        ),
      ).called(1);
    });
  });
}
