import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Escolha seu jogador',
        'respostas': ['Higor', 'Victor', 'Laura', 'Player Random'],
      },
    ];

List<String> respostas =
        perguntas[_perguntaSelecionada]['respostas'] as List<String>;


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ping Pong'),
        ),
        body: Column(
         children: [
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
