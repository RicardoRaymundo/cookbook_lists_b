import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FloatingAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'Floating App Bar';

    return Scaffold(
        body: CustomScrollView(
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
                    (context, index) => ListTile(title: Text('Item #$index')),
                // Builds 1000 ListTiles
                childCount: 1000,
              ),
            ),
          ],
        ),
      );
  }
}