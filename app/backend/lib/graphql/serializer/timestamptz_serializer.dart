import 'package:built_value/serializer.dart';

final class TimestamptzSerializer implements PrimitiveSerializer<DateTime> {
  @override
  DateTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is! String) {
      throw Exception(
        "TimestamptzSerializer expected 'String' "
        'but got ${serialized.runtimeType}',
      );
    }
    return DateTime.parse(serialized);
  }

  @override
  Object serialize(
    Serializers serializers,
    DateTime date, {
    FullType specifiedType = FullType.unspecified,
  }) => date.toString();

  @override
  Iterable<Type> get types => [DateTime];

  @override
  String get wireName => 'timestamptz';
}
