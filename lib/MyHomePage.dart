// ignore: file_names
import 'package:flutter/material.dart';

class MyImcApp extends StatefulWidget {
  @override
  _MyImcAppState createState() => _MyImcAppState();
}

class _MyImcAppState extends State<MyImcApp> {
  String resultado = 'Resultado';

  TextEditingController pesocontroller = TextEditingController();
  TextEditingController alturacontroller = TextEditingController();

  void _calcular() {
    double peso = double.parse(pesocontroller.text);
    double altura = double.parse(alturacontroller.text) / 100;
    double imc = peso / (altura * altura);
    setState(() {
      resultado = 'Seu IMC é ${imc.toStringAsPrecision(4)}';
    });
    print(resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Icon(
                  Icons.calculate,
                  color: Colors.blueGrey,
                  size: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.blueAccent),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Peso',
                  ),
                  keyboardType: TextInputType.number,
                  controller: pesocontroller,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.blueAccent),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Altura',
                  ),
                  keyboardType: TextInputType.number,
                  controller: alturacontroller,
                ),
                ElevatedButton(
                    onPressed: () => _calcular(), child: Text('Calcular')),
                Text(
                  resultado,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
