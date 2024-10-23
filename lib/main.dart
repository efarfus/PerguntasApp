import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
      'Qual o seu animal favorito2?',
      'Qual o seu animal favorito3?',
      'Qual o seu animal favorito4?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
            alignment: Alignment.center,
            child: Text('Perguntas'),
          ),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Respostas("resposta1"),
            Respostas("resposta2"),
            Respostas("resposta3"),
            Respostas("resposta4")
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
