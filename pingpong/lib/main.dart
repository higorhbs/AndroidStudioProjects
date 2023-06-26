import 'package:flutter/material.dart';

void main () {
  runApp(const PingPong ());
}

class PingPong extends StatelessWidget {
  const PingPong ({key ? key}) : super (key : key);

Widget @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'PingPong',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: const MyHomePage (),
  );
}

}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atrações'),
      ),
      body: const Placeholder(),
    );
  }
}
class Player {
  final String nome;
  final int dia;
  final List<String> tags;

  const Player(this.nome, this.dia, this.tags);
}

const listaAtracoes = [
  Player("Iron Maiden", 2, ["Espetaculo", "Fas", "NovoAlbum"]),
  Player("Alok", 3, ["Influente", "Top", "Show"]),
  Player("Justin Bieber", 4, ["TopCharts", "Hits", "PríncipeDoPOP"]),
  Player("Guns N’ Roses", 8, ["Sucesso", "Espetáculo", "Fas"]),
  Player("Capital Inicial", 9, ["2019", "Novo Álbum", "Fas"]),
  Player("Green Day", 9, ["Sucesso", "Reconhecimento", "Show"]),
  Player("Cold Play", 10, ["NovoAlbum", "Sucesso", "2011"]),
  Player("Ivete Sangalo", 10, ["Unica", "Carreiras", "Fas"]),
  Player("Racionais", 3, ["Hits", "Prêmios", "Respeito"]),
  Player("Gloria Groove", 8, ["Streams", "Representatividade", "Sucesso"]),
  Player("Avril Lavigne", 9, ["Estreia", "Sucesso", "Lançamento"]),
  Player("Ludmilla", 10, ["Representativade", "Sucesso", "Parcerias"]),
];