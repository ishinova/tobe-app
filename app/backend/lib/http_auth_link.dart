import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:gql_error_link/gql_error_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';

final class HttpAuthLink extends Link {
  HttpAuthLink({required String url}) {
    _link = Link.from([ErrorLink(onException: handleException), HttpLink(url)]);
  }

  late final Link _link;

  Stream<Response> handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    if (exception is HttpLinkServerException &&
        exception.response.statusCode == 401) {
      yield* forward(request);

      return;
    }

    final message = exception is HttpLinkServerException
        ? exception.response.reasonPhrase!
        : exception.toString();

    Zone.current.handleUncaughtError(message, StackTrace.fromString(''));

    throw exception;
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    yield* _link.request(request, forward);
  }
}
