import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          // Definindo diração de rolagem da lista para horizontal
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            // Componentes da lista

            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
