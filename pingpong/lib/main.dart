import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ping Pong',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
     final jogadorEscolhido = 0;
     void escolhaJogador(){
  }

@override
  Widget build(BuildContext context) {
    final List<String> jogadores = [
      'Escolha um jogador'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogadores'),
      ),     
      body: Column(
        children: <Widget>[
          Text(jogadores.elementAt(0)),
        ElevatedButton(onPressed: escolhaJogador, child: const Text('Higor')),
        ElevatedButton(onPressed: escolhaJogador, child: const Text('Victor')),
        ElevatedButton(onPressed: escolhaJogador, child: Text('Laura')),
        ElevatedButton(onPressed: escolhaJogador, child: Text('Outro')),
        ],
      )
    );
  }
}