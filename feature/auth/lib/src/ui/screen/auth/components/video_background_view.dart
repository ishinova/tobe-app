import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

final class HeroBackground extends HookWidget {
  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(
      () => VideoPlayerController.asset(
        'assets/videos/hero.mp4',
        package: 'feature_auth',
      ),
    );
    final isInitialized = useState(false);

    useEffect(
      () {
        controller.addListener(() {
          if (controller.value.isInitialized) {
            isInitialized.value = true;
          }
        });

        unawaited(
          Future<void>(
            () async {
              await controller.setLooping(true);
              await controller.initialize().then((_) async {
                isInitialized.value = true;
                await controller.play();
              });
            },
          ),
        );

        return controller.dispose;
      },
      const [],
    );

    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.cover,
        child: isInitialized.value
            ? SizedBox(
                width: controller.value.size.width,
                height: controller.value.size.height,
                child: VideoPlayer(controller),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
