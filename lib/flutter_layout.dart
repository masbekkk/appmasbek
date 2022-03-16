import 'package:appmasbek/main.dart';
// import 'package:appmasbek/model/tourism_place.dart';
import 'package:appmasbek/model/programming_modules.dart';
import 'package:flutter/material.dart';

 List icon = <IconData>[
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
    Icons.equalizer_rounded,
    Icons.wifi_lock,
    Icons.mail,
  ];
class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key: key);
  final ProgrammingModules place;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(place.materi),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(place.image, width: 300, height: 150)
            ),
            Container(
              child: Text(
                place.materi,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'Monserrat',
                  // fontWeight: FontWeight.bold
                  ),
                ),
              
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                    children: <Widget>[
                      const Icon(Icons.phone_android),
                      Text(place.android)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.phone_iphone),
                      Text(place.ios)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.desktop_windows),
                      Text(place.desktop)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.phonelink),
                      Text(place.multiplatform)
                    ],
                  ),
                ]
              ),
              // child: ListView.builder(
              //   itemBuilder:(context, index) {
                // return Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //   Column(
                //       children: <Widget>[
                //         // for(int i =1; i <= icon.length; i++)
                //         // Icon(icon[i]),
                //         Text(place.fitur[index])
                //       ]
                //     )
              //     ],
              //     );
              //   },
              // itemCount: place.fitur.length,
              // ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                "Deskripsi",
                  style:
                    TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins'
                    )
                  ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.justify,
                  style:
                    const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Fredoka'
                    )
                  ),
            ),
             Container(
              margin: const EdgeInsets.only(top: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                "Silabus",
                  style:
                    TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins'
                    )
                  ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.silabus,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Fredoka',
                  ),
              ),
            ),
            
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) {
                  // final ProgrammingModules place = data[place.gallery[index]];
                  return Padding(padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(60.0),
                    child:Image.network(place.gallery[index], width: 300, height: 150),
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