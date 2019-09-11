import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _imagemApp = AssetImage("images/padrao.png");
  var _message = 'Escolha uma das opções';

  void _opcaoSelecionada(String choosed) {
    //print("Opção selecionada:" + choosed);
    var options = ["pedra", "papel", "tesoura"];
    var numbers = Random().nextInt(3);
    var appChoice = options[numbers];

    print("Escolha do usuario:" + choosed);
    print("Escolha do app:" + appChoice);

    switch (appChoice) {
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    //Validation

    //user wins
    if ((choosed == 'pedra' && appChoice == 'tesoura') ||
        (choosed == 'tesoura' && appChoice == 'papel') ||
        (choosed == 'papel' && appChoice == 'pedra')) {
      setState(() {
        this._message = 'Parabéns! Você ganhou ;)';
      });
    }
    //App wins
    else if ((appChoice == 'pedra' && choosed == 'tesoura') ||
        (appChoice == 'tesoura' && choosed == 'papel') ||
        (appChoice == 'papel' && choosed == 'pedra')) {
      setState(() {
        this._message = 'Você perdeu :(';
      });
    } else {
      setState(() {
        this._message = 'Empate!! =X';
      });
    }
  }

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
          Image(
            image: this._imagemApp,
          ),
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(this._message,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                  onTap: () => _opcaoSelecionada("pedra"),
                  child: Image.asset(
                    "images/pedra.png",
                    height: 100,
                  )),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("papel"),
                  child: Image.asset(
                    "images/papel.png",
                    height: 100,
                  )),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("tesoura"),
                  child: Image.asset(
                    "images/tesoura.png",
                    height: 100,
                  )),
              //   Image.asset(
              //     "images/pedra.png",
              //     height: 100,
              //   ),
              //   Image.asset(
              //     "images/papel.png",
              //     height: 100,
              //   ),
              //   Image.asset(
              //     "images/tesoura.png",
              //     height: 100,
              //   ),
            ],
          )
        ],
      ),
    );
  }
}
