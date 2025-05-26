// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_catalog/designsystem/component/brand_icon.dart' as _i2;
import 'package:app_catalog/designsystem/component/card.dart' as _i3;
import 'package:app_catalog/designsystem/component/scaffold.dart' as _i4;
import 'package:app_catalog/feature/auth/screen/auth_screen.dart' as _i5;
import 'package:app_catalog/feature/home/screen/home_screen.dart' as _i6;
import 'package:app_catalog/feature/my/screen/settings_screen.dart' as _i7;
import 'package:app_catalog/feature/onboarding/screen/onboarding_screen.dart'
    as _i8;
import 'package:app_catalog/feature/quest/screen/quest_add_screen.dart' as _i9;
import 'package:app_catalog/feature/quest/screen/quest_detail_screen.dart'
    as _i10;
import 'package:app_catalog/feature/quest/screen/quest_screen.dart' as _i11;
import 'package:app_catalog/ui/component/quest_list_tile.dart' as _i12;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookCategory(
    name: 'DesignSystem',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'BrandIcon',
            useCase: _i1.WidgetbookUseCase(
              name: 'BrandIcon',
              builder: _i2.tobeScaffoldUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'TappableCard',
            useCase: _i1.WidgetbookUseCase(
              name: 'TappableCard',
              builder: _i3.tobeScaffoldUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'TobeScaffold',
            useCase: _i1.WidgetbookUseCase(
              name: 'TobeScaffold',
              builder: _i4.tobeScaffoldUseCase,
            ),
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'Feature',
    children: [
      _i1.WidgetbookFolder(
        name: 'auth',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AuthScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'AuthScreen',
              builder: _i5.authScreenUseCase,
            ),
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'home',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'HomeScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'HomeScreen',
              builder: _i6.homeScreenUseCase,
            ),
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'my',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'SettingsScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'SettingsScreen',
              builder: _i7.settingsScreenUseCase,
            ),
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'onboarding',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'OnboardingScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'OnboardingScreen',
              builder: _i8.onboardingScreenUseCase,
            ),
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'quest',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'QuestAddScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestAddScreen',
              builder: _i9.questAddScreenUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'QuestDetailScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestDetailScreen',
              builder: _i10.questDetailScreenUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'QuestListScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestListScreen',
              builder: _i11.questListScreenUseCase,
            ),
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'UI',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'QuestListTile',
            useCase: _i1.WidgetbookUseCase(
              name: 'QuestListTile',
              builder: _i12.tobeScaffoldUseCase,
            ),
          ),
        ],
      ),
    ],
  ),
];
