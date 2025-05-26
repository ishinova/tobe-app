part of 'package:app_mobile/router/app_router.dart';

const onboardingRoute = TypedGoRoute<OnboardingRoute>(
  path: AppPagePath.onboarding,
);

@TypedGoRoute<OnboardingRoute>(path: AppPagePath.onboarding)
final class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => OnboardingScreen(
    onPopInvoked: context.pop,
    onAgreeAndContinue: () => const HomeRoute().go(context),
  );
}
