import 'package:flutter/material.dart';


class PrimeiraTela extends StatelessWidget {
  final String texto;

  const PrimeiraTela(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(60),
      child: Text(
        texto,
        style: const TextStyle(
        fontSize: 25,
        color: Colors.blue,),
        textAlign: TextAlign.center,
      ),
    );
  }
}