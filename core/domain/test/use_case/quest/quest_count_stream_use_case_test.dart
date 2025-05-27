import 'package:core_data/repository.dart';
import 'package:core_domain/src/use_case/quest/quest_count_stream_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:core_testing/core_testing.dart';
import 'package:test/test.dart';

final class MockQuestRepository extends Mock implements QuestRepository {}

void main() {
  group('questCountStreamUseCase', () {
    late MockQuestRepository mockRepository;
    late ProviderContainer container;

    setUp(() {
      mockRepository = MockQuestRepository();
      container = ProviderContainer(
        overrides: [questRepositoryProvider.overrideWithValue(mockRepository)],
      );
      addTearDown(container.dispose);
    });

    test('クエスト数を正しく計算する', () async {
      final quests = [
        const Quest(
          id: '1',
          title: 'Quest 1',
          description: 'Description 1',
          begunAt: null,
          endedAt: null,
          categoryId: null,
          status: QuestStatus.backlog,
          coverImageUrl: null,
          note: '',
        ),
        const Quest(
          id: '2',
          title: 'Quest 2',
          description: 'Description 2',
          begunAt: null,
          endedAt: null,
          categoryId: null,
          status: QuestStatus.ready,
          coverImageUrl: null,
          note: '',
        ),
        Quest(
          id: '3',
          title: 'Quest 3',
          description: 'Description 3',
          begunAt: DateTime.now(),
          endedAt: null,
          categoryId: null,
          status: QuestStatus.inProgress,
          coverImageUrl: null,
          note: '',
        ),
        Quest(
          id: '4',
          title: 'Quest 4',
          description: 'Description 4',
          begunAt: DateTime.now(),
          endedAt: null,
          categoryId: null,
          status: QuestStatus.inProgress,
          coverImageUrl: null,
          note: '',
        ),
        Quest(
          id: '5',
          title: 'Quest 5',
          description: 'Description 5',
          begunAt: DateTime.now(),
          endedAt: null,
          categoryId: null,
          status: QuestStatus.suspend,
          coverImageUrl: null,
          note: '',
        ),
        Quest(
          id: '6',
          title: 'Quest 6',
          description: 'Description 6',
          begunAt: DateTime.now(),
          endedAt: DateTime.now(),
          categoryId: null,
          status: QuestStatus.completed,
          coverImageUrl: null,
          note: '',
        ),
        Quest(
          id: '7',
          title: 'Quest 7',
          description: 'Description 7',
          begunAt: DateTime.now(),
          endedAt: DateTime.now(),
          categoryId: null,
          status: QuestStatus.abort,
          coverImageUrl: null,
          note: '',
        ),
      ];

      when(
        () => mockRepository.stream(),
      ).thenAnswer((_) => Stream.value(quests));

      final result = await container.read(
        questCountStreamUseCaseProvider.future,
      );

      // 結果を検証
      expect(result.backlog, equals(1));
      expect(result.ready, equals(1));
      expect(result.inProgress, equals(2));
      expect(result.suspend, equals(1));
      expect(result.completed, equals(1));
      expect(result.abort, equals(1));
      expect(result.pending, equals(3));
      expect(result.total, equals(7));

      verify(() => mockRepository.stream()).called(1);
    });

    test('空のクエストリストの場合、全てのカウントが 0 になる', () async {
      when(() => mockRepository.stream()).thenAnswer((_) => Stream.value([]));

      final result = await container.read(
        questCountStreamUseCaseProvider.future,
      );

      // 結果を検証
      expect(result.backlog, equals(0));
      expect(result.ready, equals(0));
      expect(result.inProgress, equals(0));
      expect(result.suspend, equals(0));
      expect(result.completed, equals(0));
      expect(result.abort, equals(0));

      verify(() => mockRepository.stream()).called(1);
    });
  });
}
