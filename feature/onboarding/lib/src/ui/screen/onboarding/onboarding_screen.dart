import 'package:core_common/extension.dart';
import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_onboarding/src/ui/screen/onboarding/component/page_indicator.dart';
import 'package:feature_onboarding/src/ui/screen/onboarding/screen/agreement_screen.dart';
import 'package:feature_onboarding/src/ui/screen/onboarding/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// オンボーディング画面
final class OnboardingScreen extends HookWidget {
  const OnboardingScreen({
    required VoidCallback onPopInvoked,
    required VoidCallback onAgreeAndContinue,
    super.key,
  }) : _onPopInvoked = onPopInvoked,
       _onAgreeAndContinue = onAgreeAndContinue;

  final VoidCallback _onPopInvoked;
  final VoidCallback _onAgreeAndContinue;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const WelcomeScreen(),
      AgreementScreen(onAgreeAndContinue: _onAgreeAndContinue),
    ];

    final pageViewController = usePageController();
    final tabController = useTabController(initialLength: pages.length);
    final currentPage = useState(0);

    Future<void> updateCurrentPageIndex(int index) async {
      await pageViewController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint,
      );
      currentPage.value = index;
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          return;
        }
        if (currentPage.value > 0) {
          await updateCurrentPageIndex(currentPage.value - 1);
          return;
        }
        _onPopInvoked();
      },
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: pageViewController,
              physics: PageOverscrollPhysics(
                viewportFraction: pageViewController.viewportFraction,
              ),
              pageSnapping: false,
              onPageChanged: (currentPageIndex) {
                tabController.index = currentPageIndex;
                currentPage.value = currentPageIndex;
              },
              children: <Widget>[...pages.map((page) => SafeArea(child: page))],
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(TobeSpace.l),
                child: PageIndicator(
                  tabController: tabController,
                  currentPageIndex: currentPage.value,
                  isLastPage: currentPage.value == pages.lastIndex,
                  onSkipButtonPressed: () async =>
                      updateCurrentPageIndex(pages.lastIndex),
                  onNextButtonPressed: () async =>
                      updateCurrentPageIndex(currentPage.value + 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
