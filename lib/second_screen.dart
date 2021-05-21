import 'package:atividade_14/fourth_screen.dart';
import 'package:atividade_14/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tela 2 seu aplicativo'), backgroundColor: Colors.green),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  final corDeFundo = CorParameter(Colors.pink);
                  Navigator.pushNamed(context, 'Third', arguments: corDeFundo);
                },
                child: Text(
                  'Tela Três',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final parameter = FourthParameters('Vitão', 23);
                  Navigator.pushNamed(context, 'Fourth', arguments: parameter);
                },
                child: Text(
                  'Tela Quatro',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
