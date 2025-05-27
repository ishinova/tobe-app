import 'package:core_designsystem/component.dart';
import 'package:core_domain/auth_use_case.dart';
import 'package:feature_auth/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class SignInForm extends HookConsumerWidget {
  const SignInForm({required VoidCallback onLoginSuccess, super.key})
    : _onLoginSuccess = onLoginSuccess;

  final VoidCallback _onLoginSuccess;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    final emailController = useTextEditingController();
    final emailValue = useValueListenable(emailController);

    final passwordController = useTextEditingController();
    final passwordValue = useValueListenable(passwordController);

    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Form(
      key: formKey,
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: AutofillGroup(
            child: Column(
              children: [
                ...[
                  Text(
                    l10n.authSignInAppBarTitle,
                    style: theme.textTheme.headlineSmall,
                  ),

                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      icon: const Icon(Icons.email),
                      hintText: 'welcome@tobe.quest',
                      labelText: l10n.authSignInFormEmailLabel,
                    ),
                    autofillHints: const [AutofillHints.email],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.authSignInFormEmailEmptyErrorMessage;
                      }
                      if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)) {
                        return l10n.authSignInFormEmailInvalidErrorMessage;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Password',
                      labelText: l10n.authSignInFormPasswordLabel,
                    ),
                    autofillHints: const [AutofillHints.password],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.authSignInFormPasswordEmptyErrorMessage;
                      }
                      if (value.length < 6) {
                        return l10n.authSignInFormPasswordInvalidErrorMessage;
                      }
                      return null;
                    },
                  ),

                  // サインイン
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () async {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }

                        // TODO: エラーハンドリング
                        await ref.read(
                          signInUseCaseProvider(
                            email: emailValue.text,
                            password: passwordValue.text,
                          ),
                        );
                        _onLoginSuccess();
                      },
                      child: Text(l10n.authSignInFormSubmit),
                    ),
                  ),
                ].expand((widget) => [widget, const Gap(24)]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
