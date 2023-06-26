import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Placar Ping Pong'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;

  void _incrementCounter1() {
    setState(() {
      if(_counter1 == 10){
      _counter2 =0;
      _counter1 =0;
      }
      else{
    _counter1++;        
      }
    });
  }
  void _incrementCounter2() {
    setState(() {
      if(_counter2 == 10){
      _counter2 =0;
      _counter1 =0;
      }
      else{
    _counter2++;        
      }

    });
  }
  void _zeraCounter(){
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 153, 76, 70), //cor de fundo do body
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 253, 253, 253), //cor de fundo do header


        title: Text(widget.title),
      ),
      body: Center(
 
        child: Column(
          

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Player 1:',
            ),
            Text(
              '$_counter1',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text(
              'Player 2:',
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),

       floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150, // Largura do botão
              height: 150, // Altura do botão 
            ),
            FloatingActionButton(
              onPressed: (_incrementCounter1),
              child: Icon(Icons.add),
            ),
 
            FloatingActionButton(
              onPressed: (_incrementCounter2),
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: (_zeraCounter),
              child: Icon(Icons.delete),
            ),
          ],
        ),

    );
  }
}
