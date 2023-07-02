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
     if( _pontuacao1 < 11){
         _pontuacao1++;
      }
      else{
      _pontuacao1 = 0;
      }
    });
  }

  void _incrementPont2() {
    setState(() {
      if( _pontuacao2 < 11){
         _pontuacao2++;
      }
      else{
      _pontuacao2 = 0;
      }
    });
  }

void _zeraPont (){
  setState(() {
  _pontuacao1 = 0;
   _pontuacao2 = 0;
  });
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' ${widget.jogador1} Pontuação: $_pontuacao1',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          ElevatedButton(
            onPressed: _incrementPont1,
            child: Icon(Icons.add),
          ),
          Text(
            ' ${widget.jogador2} Pontuação: $_pontuacao2',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          ElevatedButton(
            onPressed: _incrementPont2,
            child: Icon(Icons.add),
          ),
          ElevatedButton(
            onPressed: _zeraPont,
            child: Icon(Icons.restore_from_trash),
          ),
          
        ],
      ),
    );
  }
}
