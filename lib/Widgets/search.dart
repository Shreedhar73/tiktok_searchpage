import 'package:flutter/material.dart';

class UserSearch extends SearchDelegate<String> {
  final List<String> names;
  String result;

  UserSearch(this.names);


  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear),
          onPressed: (){
        query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
      close(context, result);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = names.where((name){
      return name.toLowerCase().contains(query.toLowerCase());
    });
    return ListView.builder(

        itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(results.elementAt(index),),
            onTap: (){
              result = results.elementAt(index);
              close(context, result);
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = names.where((name){
      return name.toLowerCase().contains(query.toLowerCase());
    });
    return ListView.builder(

        itemCount: results.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(results.elementAt(index),),
            onTap: (){
              result = results.elementAt(index);
              close(context, result);
            },
          );
        });

  }


}