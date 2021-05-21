import 'package:atividade_14/third_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Pagina Inicial'), backgroundColor: Colors.green),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Second');
                },
                child: Text(
                  'Tela Dois',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'Third',
                  );
                },
                child: Text(
                  'Tela Três',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
