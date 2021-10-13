import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classificação de Risco:'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    "Muito abaixo do peso	16 a 16.9 kg",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.yellowAccent,
                child: Center(
                    child: Text("Abaixo do peso	17 a 18.4 kg",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.greenAccent,
                child: Center(
                    child: Text("Peso normal	18,5 a 24,9 kg",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.yellow,
                child: Center(
                    child: Text("Acima do peso	25 a 29,9 kg",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.orange,
                child: Center(
                    child: Text("Obesidade Grau I	30 a 34,9 kg",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.redAccent,
                child: Center(
                    child: Text("Obesidade Grau II	35 a 40 kg",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 240,
                color: Colors.red,
                child: Center(
                    child: Text("Obesidade Grau III	maior que 40 kg",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
