import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox.shrink(),
                ),
                Text('Calalogue suas Rosas do Deserto'),
                Text('A maneira mais fácil de registrar sua coleção'),
                ElevatedButton(
                  onPressed: () => {},
                  child: Container(
                    width: 150,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Comece Agora!'),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
