import 'package:flutter/material.dart';
import 'package:cookbook_lists_b/main.dart';
import 'package:cookbook_lists_b/pages/scroll_controller/scroll_limit_reached.dart';
import 'package:cookbook_lists_b/pages/scroll_controller/scroll_movement.dart';
import 'package:cookbook_lists_b/pages/scroll_controller/scroll_status.dart';
import 'package:cookbook_lists_b/pages/scroll_controller/scroll_sync/scroll_sync.dart';

class MainScrollController extends StatelessWidget {
  onButtonTap(Widget page, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollController / ScrollNotifiation"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('Scroll Limit Reached'),
              onPressed: () {
                onButtonTap(ScrollLimitReached(), context);
              },
            ),
            RaisedButton(
              child: Text('Scroll Limit Reached'),
              onPressed: () {
                onButtonTap(ScrollMovement(), context);
              },
            ),
            RaisedButton(
              child: Text('Scroll Limit Reached'),
              onPressed: () {
                onButtonTap(ScrollStatus(), context);
              },
            ),
            RaisedButton(
              child: Text('Scroll Limit Reached'),
              onPressed: () {
                onButtonTap(ScrollSync(), context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
