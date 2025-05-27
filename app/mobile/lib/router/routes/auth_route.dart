part of 'package:app_mobile/router/app_router.dart';

/// TypedGoRoute for feature_auth
const authRoute = TypedGoRoute<AuthRoute>(path: AppPagePath.auth);

@TypedGoRoute<AuthRoute>(path: AppPagePath.auth)
final class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AuthScreen(onLoginSuccess: () => const HomeRoute().go(context));
}
