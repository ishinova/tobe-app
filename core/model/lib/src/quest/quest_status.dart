/// クエストの進行状態
enum QuestStatus {
  /// バックログ
  backlog,

  /// 進行可能
  ready,

  /// 進行中
  inProgress,

  /// 中断
  suspend,

  /// 完了
  completed,

  /// 中止
  abort,
}
