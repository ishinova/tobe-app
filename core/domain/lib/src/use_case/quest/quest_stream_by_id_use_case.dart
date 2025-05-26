import 'package:core_data/repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_stream_by_id_use_case.g.dart';

/// 該当のクエストを取得する ユースケース
@riverpod
Stream<Quest?> questStreamByIdUseCase(Ref ref, {required QuestId id}) =>
    ref.watch(questRepositoryProvider).streamById(id: id);
