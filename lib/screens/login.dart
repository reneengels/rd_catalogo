import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rd_catalogo/themes/app_theme.dart';
import 'package:rd_catalogo/themes/app_typography.dart';

import 'home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        context.theme.appColors.primary,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const HomePage(),
                        ),
                      ),
                    },
                    child: SizedBox(
                      width: 220,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Comece Agora!',
                            style: AppTypography.h2.copyWith(
                              color: context.theme.appColors.onPrimary,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: context.theme.appColors.onPrimary,
                            size: 26,
                          ),
                        ],
                      ),
                    ),
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
