import 'package:core_data/repository.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_theme_use_case.g.dart';

/// テーマ設定を更新する ユースケース
@riverpod
Raw<Future<void>> updateThemeUseCase(Ref ref, {required Theme theme}) =>
    ref.watch(userSettingsRepositoryProvider).setTheme(theme: theme);
