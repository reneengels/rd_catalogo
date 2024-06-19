import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../components/button_with_arrow.dart';
import '../../components/form_item.dart';
import '../../themes/app_theme.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _WelcomeText(),
            _LoginForm(),
            _SignInOptions(),
            _SignUp(),
          ],
        ),
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Olá, ',
          style: AppTypography.h1.copyWith(
            color: context.theme.appColors.onBackground,
          ),
        ),
        Text(
          'Bem-Vindo de Volta!',
          style: AppTypography.h2.copyWith(
            color: context.theme.appColors.onBackground,
          ),
        ),
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormItem(
            text: 'Email',
            controller: emailController,
            validator: (input) {
              if (input == null) return null;

              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(input);

              if (!emailValid) {
                return 'Insira um email válido!';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 20),
          FormItem(
            text: 'Senha',
            controller: passwordController,
            validator: (input) => null,
          ),
          const SizedBox(height: 10),
          Text(
            'Esqueceu sua Senha?',
            style: AppTypography.body3.copyWith(
              color: context.theme.appColors.error,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: ButtonWithArrow(
                'Login',
                () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SignInOptions extends StatelessWidget {
  const _SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: context.theme.appColors.onSurface,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text('Ou Utilize'),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: context.theme.appColors.onSurface,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/google_logo.png',
            width: 50,
            height: 50,
          ),
        ),
      ],
    );
  }
}

class _SignUp extends StatelessWidget {
  const _SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Não tem uma conta?',
          style: AppTypography.body2.copyWith(
            color: context.theme.appColors.onBackground,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'criar conta',
          style: AppTypography.body2.copyWith(
            color: context.theme.appColors.error,
          ),
        ),
      ],
    );
  }
}
