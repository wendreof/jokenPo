import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JokenPo')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text('Escolha do App',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          GestureDetector(
            onTap: () {
              print('1 clicked');
            },
            onDoubleTap: () {
              print('2 clicked');
            },
            onLongPress: () {
              print('1 long cliked');
            },
            child: Image.asset("images/padrao.png"),
          ),
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text('Escolha uma das opções',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                "images/pedra.png",
                height: 100,
              ),
              Image.asset(
                "images/papel.png",
                height: 100,
              ),
              Image.asset(
                "images/tesoura.png",
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
