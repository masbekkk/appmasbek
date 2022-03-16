import 'package:flutter/cupertino.dart';

class TourismPlace{
  String name, location, imageAsset, desc, day, time, price;
  var gallery = [], fitur = [];
  // Icon icons = [Icon(Icons.calendar_today_rounded), Icon(Icons.query_builder_rounded), Icon(Icons.monetization_on_outlined)];

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.desc,
    required this.day,
    required this.time,
    required this.price,
    required this.gallery,
    required this.fitur,
    // required this.icons
  });
}
 var data = [
    TourismPlace(
      name: "Sby submarine", 
      location: "jl pemuda", 
      imageAsset: "assets/images/img08.jpg",
      desc: """
          Muesum inside a decommissioned Russian war submarine..
          Lorem Ipsum simply dummy text of the printing and typesetting industry. 
          Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
          It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
          It was popularised in the 1960s with the release of Letraset sheets containing 
          Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
      day: "Everyday",
      time: "08.00 - 16.00",
      price: "IDR 50.000",
      gallery: ['https://res.cloudinary.com/bekhan/image/upload/v1647404130/lomba/memulai_pemrograman_dengan_c_logo_230421131703_xiv97i.jpg', 'https://demo.getstisla.com/assets/img/news/img05.jpg', 'https://demo.getstisla.com/assets/img/news/img08.jpg', 'https://demo.getstisla.com/assets/img/news/img06.jpg'],
      fitur: ['android', 'ios']
      // icons: ['Icons.calendar_today_rounded', 'Icons.query_builder_rounded', 'Icons.monetization_on_outlined']
    ),
    TourismPlace(name: "Sby submarine2", location: "jl pemuda12", imageAsset: "assets/images/img08.jpg",
          desc: """
          Muesum inside a decommissioned Russian war submarine..
          Lorem Ipsum simply dummy text of the printing and typesetting industry. 
          Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
          when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
          It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
          It was popularised in the 1960s with the release of Letraset sheets containing 
          Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."""
          ,day: "Every Friday",
          time: "09.00 - 19.00",
          price: "IDR 20.000",
          gallery: ['https://d17ivq9b7rppb3.cloudfront.net/original/academy/belajar_prinsip_pemrograman_solid_logo_230421132206.jpg', 'https://demo.getstisla.com/assets/img/news/img05.jpg', 'https://demo.getstisla.com/assets/img/news/img08.jpg', 'https://demo.getstisla.com/assets/img/news/img06.jpg']
          ,fitur: ['android', 'Mac']
          // icons: ['Icons.calendar_today_rounded', 'Icons.query_builder_rounded', 'Icons.monetization_on_outlined']
    ),
  ];
