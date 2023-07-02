import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  final String jogador1;
  final String jogador2;

  const Jogo({Key? key, required this.jogador1, required this.jogador2}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  int _pontuacao1 = 0;
  int _pontuacao2 = 0;

  void _incrementPont1() {
    setState(() {
      _pontuacao1++;
      print(_pontuacao1);
    });
  }

  void _incrementPont2() {
    setState(() {
      _pontuacao2++;
      print(_pontuacao2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.jogador1,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          ElevatedButton(
            onPressed: _incrementPont1,
            child: Icon(Icons.add),
          ),
          Text(
            widget.jogador2,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          ElevatedButton(
            onPressed: _incrementPont2,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
