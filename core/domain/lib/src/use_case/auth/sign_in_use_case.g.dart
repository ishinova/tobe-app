// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signInUseCaseHash() => r'2d1d5f43dc561082e666975e35017dd0dfb12290';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// サインインする ユースケース
///
/// Copied from [signInUseCase].
@ProviderFor(signInUseCase)
const signInUseCaseProvider = SignInUseCaseFamily();

/// サインインする ユースケース
///
/// Copied from [signInUseCase].
class SignInUseCaseFamily extends Family<Raw<Future<void>>> {
  /// サインインする ユースケース
  ///
  /// Copied from [signInUseCase].
  const SignInUseCaseFamily();

  /// サインインする ユースケース
  ///
  /// Copied from [signInUseCase].
  SignInUseCaseProvider call({
    required String email,
    required String password,
  }) {
    return SignInUseCaseProvider(
      email: email,
      password: password,
    );
  }

  @override
  SignInUseCaseProvider getProviderOverride(
    covariant SignInUseCaseProvider provider,
  ) {
    return call(
      email: provider.email,
      password: provider.password,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'signInUseCaseProvider';
}

/// サインインする ユースケース
///
/// Copied from [signInUseCase].
class SignInUseCaseProvider extends AutoDisposeProvider<Raw<Future<void>>> {
  /// サインインする ユースケース
  ///
  /// Copied from [signInUseCase].
  SignInUseCaseProvider({
    required String email,
    required String password,
  }) : this._internal(
          (ref) => signInUseCase(
            ref as SignInUseCaseRef,
            email: email,
            password: password,
          ),
          from: signInUseCaseProvider,
          name: r'signInUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signInUseCaseHash,
          dependencies: SignInUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SignInUseCaseFamily._allTransitiveDependencies,
          email: email,
          password: password,
        );

  SignInUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.password,
  }) : super.internal();

  final String email;
  final String password;

  @override
  Override overrideWith(
    Raw<Future<void>> Function(SignInUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SignInUseCaseProvider._internal(
        (ref) => create(ref as SignInUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Future<void>>> createElement() {
    return _SignInUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignInUseCaseProvider &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignInUseCaseRef on AutoDisposeProviderRef<Raw<Future<void>>> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;
}

class _SignInUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<Future<void>>>
    with SignInUseCaseRef {
  _SignInUseCaseProviderElement(super.provider);

  @override
  String get email => (origin as SignInUseCaseProvider).email;
  @override
  String get password => (origin as SignInUseCaseProvider).password;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
