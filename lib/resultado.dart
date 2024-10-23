import 'dart:ffi';

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() resetQuiz;
  Resultado(this.pontuacao, this.resetQuiz);

  String get fraseResultado {
    if (pontuacao <= 4) {
      return "voce eh ok";
    } else if (pontuacao <= 8) {
      return "voce eh ook";
    } else if (pontuacao <= 12) {
      return "voce eh ook";
    } else {
      return "voce eh ooook";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 30),
          ),
        ),
        ElevatedButton(
            onPressed: resetQuiz,
            child: Text(
              "Reiniciar",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ))
      ],
    );
  }
}
