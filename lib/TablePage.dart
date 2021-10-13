import 'dart:html';

import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            Text("Muito abaixo do peso	16 a 16.9 kg/m2"),
            Text("abaixo do peso	17 a 18.4 kg/m2	"),
            Text("Peso normal	18,5 a 24,9 kg"),
            Text("Acima do peso	25 a 29,9 kg"),
            Text("Obesidade Grau I	30 a 34,9 kg"),
            Text("Obesidade Grau II	35 a 40 kg"),
            Text("Obesidade Grau III	maior que 40 kg/m2"),
          ],
        ),
      ),
    );
  }
}
