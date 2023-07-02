import 'package:flutter/material.dart';
import './primeiraTela.dart';
import './jogo.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Escolha os Jogadores',
      'respostas': ['Higor', 'Victor', 'Laura', 'Outro'],
    },
  ];

  String? _jogador1;
  String? _jogador2;

  void _responder(String jogador) {
    if (_jogador1 == null) {
      setState(() {
        _jogador1 = jogador;
      });
    } else if (_jogador2 == null) {
      setState(() {
        _jogador2 = jogador;
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ping Pong'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  PrimeiraTela(_perguntas[_perguntaSelecionada]['texto'] as String),
                  ...respostas.map((t) => Resposta(t, () => _responder(t))).toList(),
                ],
              )
            : Jogo(jogador1: _jogador1!, jogador2: _jogador2!),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
