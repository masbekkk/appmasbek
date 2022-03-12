import 'package:appmasbek/main.dart';
import 'package:appmasbek/model/tourism_place.dart';
import 'package:flutter/material.dart';
import 'package:appmasbek/detail_screen3.dart';

void main()
{
  runApp(MyApp());
}
// var place = TourismPlace(name: "o", location: "", imageAsset: "");
  

class MyApp extends StatelessWidget{
  MyApp({Key? key}) : super(key: key);
  late TourismPlace place;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(place: place),
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key: key);
  final TourismPlace place;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/img08.jpg', width: 300, height: 150)
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "Surabaya Submarine Monument",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Lobster',
                  // fontWeight: FontWeight.bold
                  ),
                ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Muesum inside a decommissioned Russian war submarine..Lorem Ipsum simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Fredoka',
                  ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today_rounded),
                      Text('Open Everyday')
                    ],
                  ),
                   Column(
                    children: const <Widget>[
                      Icon(Icons.query_builder_rounded),
                      Text('08.00-16.00')
                    ],
                  ),
                   Column(
                    children: const <Widget>[
                      Icon(Icons.monetization_on_outlined),
                      Text('Open Everyday')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network('https://demo.getstisla.com/assets/img/products/product-1-50.png', width: 150, height: 150,),
                    )
                  ),
                  Padding(padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                    child:Image.asset('assets/images/img08.jpg', width: 150, height: 150),
                   ),
                  ),
                  Padding(padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                    child: Image.asset('assets/images/img08.jpg', width: 150, height: 150)
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                    child: Image.asset('assets/images/img08.jpg', width: 150, height: 150)
                    ),
                  ),
                ],
              ),
            )
        ],  
      ),
    ),
      ),
      drawer: Sidebar(),
    );
  }
}