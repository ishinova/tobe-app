// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toaster.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toastListKeyHash() => r'2b32578c742f2546637c9d8c7e2000ff45151ee3';

/// See also [toastListKey].
@ProviderFor(toastListKey)
final toastListKeyProvider = Provider<GlobalKey<AnimatedListState>>.internal(
  toastListKey,
  name: r'toastListKeyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toastListKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ToastListKeyRef = ProviderRef<GlobalKey<AnimatedListState>>;
String _$toasterHash() => r'246e5af54027bdba0015ad996bc4c5da55e32d6a';

/// See also [Toaster].
@ProviderFor(Toaster)
final toasterProvider =
    AutoDisposeNotifierProvider<Toaster, List<ToastData>>.internal(
  Toaster.new,
  name: r'toasterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toasterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Toaster = AutoDisposeNotifier<List<ToastData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
