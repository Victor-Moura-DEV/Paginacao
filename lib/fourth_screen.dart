import 'package:flutter/material.dart';

class FourthParameters {
  final String name;
  final int idade;

  FourthParameters(this.name, this.idade);
}

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    final parameter =
        ModalRoute.of(context).settings.arguments as FourthParameters;

    return Scaffold(
      appBar: AppBar(
          title: Text('Tela 4 do seu aplicativo'),
          backgroundColor: Colors.green),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(parameter.name == null ? 'sem informação' : parameter.name),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(
                    context,
                    ModalRoute.withName('/'),
                  );
                },
                child: Text(
                  'HOME',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Voltar',
                ),
              ),
              Text('${parameter.idade}' == null
                  ? 'sem informação'
                  : '${parameter.idade}')
            ],
          ),
        ),
      ),
    );
  }
}
