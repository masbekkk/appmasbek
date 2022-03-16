import 'package:appmasbek/flutter_layout.dart';
import 'package:appmasbek/main.dart';
// import 'package:appmasbek/model/tourism_place.dart';
import 'package:appmasbek/model/programming_modules.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programming Course'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final ProgrammingModules place = data[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: data.length,
        ),
      drawer: Sidebar(),
    );
  }

  Widget listItem(ProgrammingModules place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network(place.image, width: 300, height: 150)
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(place.materi,
                  style: const TextStyle(fontSize: 16.0)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Icon(Icons.query_builder),
                  Text(place.estimasi),
                ],
              ),
              ),
          )
          ],
        )
    );
  }
}
