import 'package:appmasbek/main.dart';
import 'package:appmasbek/model/tourism_place.dart';
import 'package:flutter/material.dart';

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
              child: Image.asset(place.imageAsset, width: 300, height: 150)
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'Lobster',
                  // fontWeight: FontWeight.bold
                  ),
                ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                    children: <Widget>[
                      const Icon(Icons.calendar_today_rounded),
                      Text(place.day)
                    ],
                  ),
                   Column(
                    children: <Widget>[
                      const Icon(Icons.query_builder_rounded),
                      Text(place.time)
                    ],
                  ),
                   Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on_outlined),
                      Text(place.price)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) {
                  // final TourismPlace place = data[place.gallery[index]];
                  return Padding(padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                    child:Image.asset(place.gallery[index], width: 150, height: 150),
                   ),
                  );
                },
                itemCount: place.gallery.length,
                
                // for(int i = 1; i<= place.gallery.length; i++){
                // children: [
                  // Padding(padding: const EdgeInsets.all(4.0),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(50.0),
                  //   child: Image.network('https://demo.getstisla.com/assets/img/products/product-1-50.png', width: 150, height: 150,),
                  //   )
                  // ),
                // for(int i = 1; i<= place.gallery.length; i++){
                  // Padding(padding: const EdgeInsets.all(4.0),
                  //   child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                  //   child:Image.asset('assets/images/img08.jpg', width: 150, height: 150),
                  //  ),
                  // ),
                
                  // Padding(padding: const EdgeInsets.all(4.0),
                  // child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                  //   child: Image.asset('assets/images/img08.jpg', width: 150, height: 150)
                  //   ),
                  // ),
                  // Padding(padding: const EdgeInsets.all(4.0),
                  // child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                  //   child: Image.asset('assets/images/img08.jpg', width: 150, height: 150)
                  //   ),
                  // ),
                // ],
              ),
            )
        ],  
      ),
    ),
      ),
      // drawer: Sidebar(),
    );
  }
}