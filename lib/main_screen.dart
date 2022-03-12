import 'package:appmasbek/flutter_layout.dart';
import 'package:appmasbek/model/tourism_place.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  var tourismPlaceList;
  MainScreen({Key? key}) : super(key: key);
  late TourismPlace place;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: listItem(),
          );
        },
        )
      
    );
  }

  Widget listItem(){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset, width: 300, height: 150)
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(place.name,
                  style: TextStyle(fontSize: 16.0)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                ],
              ),
              ),
          )
          ],
        )
    );
  }
}
