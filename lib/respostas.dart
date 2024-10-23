import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  Respostas(this.resposta);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null, child: Text(resposta));
  }
}
