import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: GridView.count(
          // Cria um grid com 2 colunas. Se mudar o scrollDirection para
          // horizontal, serão produzidas duas linhas.
          crossAxisCount: 2,
          // Gera 100 widgets que mostrarão seus index na List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}