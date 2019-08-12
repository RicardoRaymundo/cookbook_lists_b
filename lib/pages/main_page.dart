import 'package:flutter/material.dart';
import 'package:cookbook_lists_b/pages/scroll_controller/main_scroll_controller.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lists!!'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Botoes para navegar para os exemplos
              RaisedButton(
                child: Text('Grid List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/GridList');
                },
              ),
             // SizedBox(height: 15,),
              RaisedButton(
                child: Text('Horizontal List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/HorizontalList');
                },
              ),
              RaisedButton(
                child: Text('Mixed List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/MixedList');
                },
              ),
              RaisedButton(
                child: Text('Floating App Bar'),
                onPressed: () {
                  Navigator.pushNamed(context, '/FloatingAppBar');
                },
              ),
              RaisedButton(
                child: Text('Basic List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/BasicList');
                },
              ),
              RaisedButton(
                child: Text('Long List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/LongList');
                },
              ),
              RaisedButton(
                child: Text('JSON List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/LongJsonList');
                },
              ),
              RaisedButton(
                child: Text('Floating Appbar JSON List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/FloatingAppbarJson');
                },
              ),
              RaisedButton(
                child: Text('Scroll Controller'),
                onPressed: () {
                  Navigator.pushNamed(context, '/MainScrollController');
                },
              ),
            ],
          )
      ),
    );
  }
}
