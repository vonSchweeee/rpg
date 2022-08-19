import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MasterSelectScreen extends StatelessWidget {
  const MasterSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 30),
              child: const AutoSizeText(
                'Conectar-se como mestre',
                style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Endereço de IP'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/master');
              },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: AutoSizeText('Conectar', style: TextStyle(fontSize: 30)),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}