import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/tela_de_fundo_inicial.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(child: Container()),
          Container(
            width: 50,
            height: 50,
            child: ElevatedButton(
              child: const Row(
                children: [
                  Text('Comece Agora!'),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              onPressed: ()=>{},
            ),
          ),
        ],
      ),
    );
  }
}
