import 'dart:ui';

import 'package:feature_auth/src/ui/screen/auth/components/sign_in_form.dart';
import 'package:feature_auth/src/ui/screen/auth/components/video_background_view.dart';
import 'package:flutter/material.dart';

/// 認証画面
final class AuthScreen extends StatelessWidget {
  const AuthScreen({required VoidCallback onLoginSuccess, super.key})
    : _onLoginSuccess = onLoginSuccess;

  final VoidCallback _onLoginSuccess;

  @override
  Widget build(BuildContext context) {
    final focus = FocusScope.of(context);

    return GestureDetector(
      onTap: () {
        if (!focus.hasPrimaryFocus) {
          focus.unfocus();
        }
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            const HeroBackground(),
            SafeArea(
              child: Center(
                child: Container(
                  // padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SignInForm(onLoginSuccess: _onLoginSuccess),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
