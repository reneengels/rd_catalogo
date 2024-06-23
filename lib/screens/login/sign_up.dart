import 'package:flutter/material.dart';
import '../../components/button_with_arrow.dart';
import '../../components/form_item.dart';
import '../../themes/app_theme.dart';
import 'sign_in.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const route = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return const _SignUpView();
  }
}

class _SignUpView extends StatelessWidget {
  const _SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _WelcomeText(),
                _SignUpForm(),
                _SignInOptions(),
                _SignIn(),
              ],
            ),
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
          'Crie sua conta',
          style: AppTypography.h1.copyWith(
            color: context.theme.appColors.onBackground,
          ),
        ),
        Text(
          'Preencha os dados, não levará muito tempo!',
          style: AppTypography.h2.copyWith(
            color: context.theme.appColors.onBackground,
          ),
        ),
      ],
    );
  }
}

class _SignUpForm extends StatelessWidget {
  const _SignUpForm();

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormItem(
            text: 'Nome',
            controller: nameController,
            validator: (input) {
              if (input == null) {
                return 'Insira o nome';
              } else if (input.isEmpty) {
                return 'Insira o nome';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
          FormItem(
            text: 'Confirme a senha',
            controller: confPasswordController,
            obscuredText: true,
            validator: (input) {
              if (confPasswordController.text == passwordController.text) {
                return null;
              } else {
                return 'As senhas não conferem!';
              }
            },
          ),
          const SizedBox(height: 10),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: ButtonWithArrow(
                'Cadastrar',
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

class _SignIn extends StatelessWidget {
  const _SignIn();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Já é um membro?',
            style: AppTypography.body2.copyWith(
              color: context.theme.appColors.onBackground,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                SignInPage.route,
              );
            },
            child: Text(
              'faça login',
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
