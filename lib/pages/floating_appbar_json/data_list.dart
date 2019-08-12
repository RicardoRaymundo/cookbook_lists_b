import 'package:flutter/material.dart';
import 'json_data.dart';

class DataListx extends StatelessWidget {
  // Variavel que recebe o snapshot.data do componente pai
  final List<JsonData> jsonData;
  final title = 'Lista carregada de uma API';

  DataListx({Key key, this.jsonData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print('!!!!!!!!!!!!!!!!!!!!!');

    print(this.jsonData.length);
    return
      CustomScrollView(
        slivers: <Widget>[
          // Adiciona a appBar tipo sliver
          SliverAppBar(
            title: Text(title),
            // Permite ao usuario revelar a appBar ao arrastar a lista para cima
            floating: true,
            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: Placeholder(),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 200,
          ),
          // Next, create a SliverList
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
                  (context, index) => ListTile(title: Text(this.jsonData[index].title)),
              // Builds 1000 ListTiles
              childCount: this.jsonData.length,
            ),
          ),
        ],
      );
  }
}