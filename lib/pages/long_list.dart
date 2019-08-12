import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  // Gera lista uma longa lista de strings
  final List<String> items = List<String>.generate(10000, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        // Quantidade de itens da lista de acordo com o tamanho da mesma
        itemCount: items.length,

        //Criando um componente para cada item da lista
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}