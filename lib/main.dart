import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = [
    {
      "pergunta": 'Qual o seu animal favorito?',
      "resposta": [
        {"texto": "Cachorro", "pontuacao": 4},
        {"texto": "Gato", "pontuacao": 3},
        {"texto": "Pássaro", "pontuacao": 2},
        {"texto": "Peixe", "pontuacao": 1}
      ]
    },
    {
      "pergunta": 'Qual o seu esporte favorito?',
      "resposta": [
        {"texto": "Futebol", "pontuacao": 4},
        {"texto": "Basquete", "pontuacao": 3},
        {"texto": "Natação", "pontuacao": 2},
        {"texto": "Ciclismo", "pontuacao": 1}
      ]
    },
    {
      "pergunta": 'Qual o seu tipo de música favorita?',
      "resposta": [
        {"texto": "Rock", "pontuacao": 4},
        {"texto": "Pop", "pontuacao": 3},
        {"texto": "Clássica", "pontuacao": 2},
        {"texto": "Eletrônica", "pontuacao": 1}
      ]
    },
    {
      "pergunta": 'Qual o seu prato preferido?',
      "resposta": [
        {"texto": "Pizza", "pontuacao": 4},
        {"texto": "Hambúrguer", "pontuacao": 3},
        {"texto": "Sushi", "pontuacao": 2},
        {"texto": "Salada", "pontuacao": 1}
      ]
    }
  ];

  void resetQuiz() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
    print(_pontuacaoTotal);
  }

  bool get theresQuestion {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Container(
              alignment: Alignment.center,
              child: Text('Perguntas'),
            ),
          ),
          body: theresQuestion
              ? Questionario(
                  perguntaSelecionada: _perguntaSelecionada,
                  perguntas: _perguntas,
                  responder: _responder)
              : Resultado(_pontuacaoTotal, resetQuiz)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
