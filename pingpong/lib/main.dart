import 'package:flutter/material.dart';
import './primeiraTela.dart';
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
  int _counter = 0;
          void _incrementCounter() {
    setState(() {
      _counter++;
          print(_counter);
    });

  }

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
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
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Center(
            child: 
            ElevatedButton(
            onPressed: () {
              _incrementCounter();
              // Ação a ser executada quando o botão for pressionado
            },
            child: Icon(Icons.add), // Ícone do botão
          ),
            )
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
