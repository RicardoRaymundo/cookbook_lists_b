import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'list_item.dart';

class MixedList extends StatelessWidget {

  // Gera lista mista com dois componentes diferentes
  final List<ListItem> listItems = List<ListItem>.generate(
    1000,
    (i) => i % 6 == 0
        ? HeadingItem("Heading $i")
        : MessageItem("Sender $i", "Message body $i"),
  );

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          // Configura a quantidade de itens de acordo com o tamanho da lista.
          itemCount: listItems.length,
          
          // Converte cada item em um componente baseado no tipo do item.
          itemBuilder: (context, index) {
            // Pega cada item pelo indice
            final item = listItems[index];

            // Verifica se item é do tipo HeadingItem.
            // cria instancia de ListTile de acordo com o tipo do item recebido.
            if (item is HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is MessageItem) {
              return ListTile(
                title: Text(item.sender),
                subtitle: Text(item.body),
              );
            }
          },
        ),
      );
  }
}

