import 'package:flutter/material.dart';
import '../../components/button_with_arrow.dart';

import '../../themes/app_theme.dart';
import '../home/home.dart';
import 'sign_in.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/tela_de_fundo_inicial.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xe0000000),
                  Color(0x50000000),
                  Colors.transparent,
                ],
                stops: [0.0, 0.6, 1.0],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 200, 20, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          'Catalogue suas Rosas do Deserto',
                          style: AppTypography.h1.copyWith(
                            color: context.theme.appColors.onPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'A maneira mais fácil de registrar sua coleção',
                          style: AppTypography.body1.copyWith(
                            color: context.theme.appColors.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtonWithArrow(
                    'Comece Agora!',
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const SignInView(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
