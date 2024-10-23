import 'package:flutter/material.dart';
import 'questao.dart';
import 'respostas.dart';

class Questionario extends StatelessWidget {
  final perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;
  Questionario(
      {required this.perguntaSelecionada,
      required this.perguntas,
      required this.responder});
  bool get theresQuestion {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = theresQuestion
        ? perguntas[perguntaSelecionada]['resposta']
            as List<Map<String, Object>>
        : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['pergunta'] as String),
        ...respostas
            .map((resp) => Respostas(resp['texto'] as String,
                () => responder(int.parse(resp['pontuacao'].toString()))))
            .toList(),
      ],
    );
  }
}
