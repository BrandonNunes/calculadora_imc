// ignore: file_names
import 'package:calculadora_imc/TablePage.dart';
import 'package:flutter/material.dart';

class MyImcApp extends StatefulWidget {
  @override
  _MyImcAppState createState() => _MyImcAppState();
}

class _MyImcAppState extends State<MyImcApp> {
  String resultado = '';

  TextEditingController pesocontroller = TextEditingController();
  TextEditingController alturacontroller = TextEditingController();

  void _refresh() {
    setState(() {
      pesocontroller.text = '';
      alturacontroller.text = '';
      resultado = '';
    });
  }

  void _calcular() {
    double peso = double.parse(pesocontroller.text);
    double altura = double.parse(alturacontroller.text) / 100;
    double imc = peso / (altura * altura);
    setState(() {
      if (imc < 18.5) {
        resultado =
            'Seu IMC é de ${imc.toStringAsFixed(2)} e você esta abaixo do peso!';
      } else if (imc >= 18.5 && imc < 24.9) {
        resultado =
            'Seu IMC é de ${imc.toStringAsFixed(2)} e você esta com peso Normal!';
      } else if (imc > 24.9 && imc <= 29.9) {
        resultado =
            'Seu IMC é de ${imc.toStringAsFixed(2)} e você esta acima do peso!';
      } else if (imc > 29.9 && imc <= 34.9) {
        resultado =
            'Seu IMC é de ${imc.toStringAsFixed(2)} e você esta com Obesidade Grau I!!!';
      } else if (imc > 34.9 && imc <= 39.9) {
        resultado =
            'Seu IMC é de ${imc.toStringAsFixed(2)} e você esta com Obesidade Grau II!!!';
      } else if (imc > 39.9) {
        resultado =
            'Seu IMC é de ${imc.toStringAsFixed(2)} e você esta com Obesidade Morbida!!! Procure um especialista!!!';
      } else if (pesocontroller == "" || alturacontroller == "") {
        resultado = 'Por favor preencha todos os campos';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/table');
              },
              icon: Icon(Icons.table_view)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'by Brandon',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 60,
                ),
                Icon(
                  Icons.calculate_outlined,
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
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _refresh();
          },
          child: Icon(Icons.refresh)),
    );
  }
}
