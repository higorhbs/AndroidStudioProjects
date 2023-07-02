import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  final String jogador1;
  final String jogador2;

  const Jogo({Key? key, required this.jogador1, required this.jogador2})
      : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  int _pontuacao1 = 0;
  int _pontuacao2 = 0;

  void _incrementPont1() {
    setState(() {
      if (_pontuacao1 < 11) {
        _pontuacao1++;
      } else {
        _pontuacao1 = 0;
        _pontuacao2 = 0;
      }
    });
  }

  void _incrementPont2() {
    setState(() {
      if (_pontuacao2 < 11) {
        _pontuacao2++;
      } else {
        _pontuacao2 = 0;
        _pontuacao1 = 0;
      }
    });
  }

  void _zeraPont() {
    setState(() {
      _pontuacao1 = 0;
      _pontuacao2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pontuação ${widget.jogador1} : $_pontuacao1',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Pontuação ${widget.jogador2} : $_pontuacao2',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementPont1,
                  child: Icon(Icons.add),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _incrementPont2,
                  child: Icon(Icons.add),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _zeraPont,
                  child: Icon(Icons.restore_from_trash),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
