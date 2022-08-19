import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: AutoSizeText(
                  'RPG',
                  style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/master/select');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                    padding: const EdgeInsets.all(12),
                  ),
                  child: const AutoSizeText(
                    'Conectar-se como mestre',
                    style: TextStyle(fontSize: 30),
                    maxLines: 1,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                    padding: const EdgeInsets.all(12),
                  ),
                  child: const AutoSizeText(
                    'Entrar em um jogo',
                    style: TextStyle(fontSize: 30),
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}