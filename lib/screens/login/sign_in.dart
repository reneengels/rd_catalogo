import 'package:flutter/material.dart';

import '../../components/button_with_arrow.dart';
import '../../components/form_item.dart';
import '../../themes/app_theme.dart';
import 'sign_up.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static const route = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return const _SignInView();
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
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
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText();

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
            validator: (input) {
              if (input == null) {
                return 'Insira sua senha';
              } else if (input.length < 6) {
                return 'A senha deve ter ao menos 6 dígitos';
              } else {
                return null;
              }
            },
            obscuredText: true,
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('text')));
            },
            child: Text(
              'Esqueceu sua Senha?',
              style: AppTypography.body3.copyWith(
                color: context.theme.appColors.error,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: ButtonWithArrow(
                'Login',
                () {
                  FocusManager.instance.primaryFocus?.unfocus();

                  if (formKey.currentState!.validate()) {}
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
  const _SignInOptions();

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
  const _SignUp();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Não tem uma conta?',
            style: AppTypography.body2.copyWith(
              color: context.theme.appColors.onBackground,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                SignUpPage.route,
              );
            },
            child: Text(
              'criar conta',
              style: AppTypography.body2.copyWith(
                color: context.theme.appColors.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
