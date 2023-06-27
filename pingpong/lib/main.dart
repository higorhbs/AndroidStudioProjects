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
        ElevatedButton(onPressed: null, child: Text('Higor')),
        ElevatedButton(onPressed: null, child: Text('Victor')),
        ElevatedButton(onPressed: null, child: Text('Laura')),
        ElevatedButton(onPressed: null, child: Text('Outro')),
        ],
      )


  //    ListView.builder(
  //       itemCount: listPlayers.length,
  //      itemBuilder: (context, index) {
  //  return ListTile(
  //     title: Text(listPlayers[index].nome),
  //   );
  // },
  //    ),
    );
  }
}

// class Player {
//   final String nome;
//   final int dia;
//   final List<String> tags;

//   const Player(this.nome, this.dia, this.tags);
// }

// const listPlayers = [
//   Player("Higor", 2, ["Espetaculo", "Fas", "NovoAlbum"]),
//   Player("Victor", 3, ["Influente", "Top", "Show"]),
//   Player("Laura", 4, ["TopCharts", "Hits", "PríncipeDoPOP"]),
 
// ];
