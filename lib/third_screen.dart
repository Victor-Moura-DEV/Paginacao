import 'package:atividade_14/fourth_screen.dart';
import 'package:flutter/material.dart';

class CorParameter {
  final Color cor;

  CorParameter(this.cor);
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final corDeFundo =
        ModalRoute.of(context).settings.arguments as CorParameter;

    return Scaffold(
      backgroundColor: corDeFundo == null ? Colors.black : corDeFundo.cor,
      appBar: AppBar(
          title: Text('Tela 3 do seu aplicativo'),
          backgroundColor: Colors.green),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Voltar',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final parameter = FourthParameters('vitão é god', 23);
                  Navigator.popAndPushNamed(context, 'Fourth',
                      arguments: parameter);
                },
                child: Text(
                  'Tela 4 poped',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
