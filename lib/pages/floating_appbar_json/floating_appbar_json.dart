import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'json_data.dart';
import 'data_list.dart';





class FloatingAppbarJson extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'Floating Appbar with JSON';

    return Scaffold(
      body: FutureBuilder<List<JsonData>>(
        // A future é o processamento do json do servidor
        // Recebe List<JsonData>
        future: fetchPhotos(),
        builder: (context, snapshot) {
          // Verifica se há erro
          if (snapshot.hasError) print(snapshot.error);

          // Mostra tela de carregamento até o fim do processamento dos dados
          return snapshot.hasData
              ? DataListx(jsonData: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

/*
FutureBuilder<List<JsonData>>(
        // A future é o processamento do json do servidor
        // Recebe List<JsonData>
        future: fetchPhotos(),
        builder: (context, snapshot) {
          // Verifica se há erro
          if (snapshot.hasError) print(snapshot.error);

          // Mostra tela de carregamento até o fim do processamento dos dados
          return snapshot.hasData
              ? DataListx(jsonData: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
 */

/*
final someOtherSliver = SliverToBoxAdapter(...);

return FutureBuilder<List<Data>>(
  future: getQuake(), // this is a code smell. Make sure that the future is NOT recreated when build is called. Create the future in initState instead.
  builder: (context, snapshot){
    Widget newsListSliver;
    if(snapshot.hasData) {
      newsListSliver = SliverList(delegate: SliverChildBuilderDelegate(...))
    } else {
      newsListSliver = SliverToBoxAdapter(child: CircularProgressIndicator(),);
    }

    return CustomScrollView(
      slivers: <Widget>[
        someOtherSliver,
        newsListSliver
      ],
    );
  },
);
 */