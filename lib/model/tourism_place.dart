class TourismPlace{
  String name, location, imageAsset, desc, day, time, price;
  var gallery = [];

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.desc,
    required this.day,
    required this.time,
    required this.price,
    required this.gallery
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
      gallery: ['assets/images/img08.jpg', 'assets/images/img07.jpg', 'assets/images/img05.jpg', 'assets/images/img08.jpg']
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
          gallery: ['assets/images/img07.jpg', 'assets/images/img05.jpg', 'assets/images/img05.jpg']
    ),
  ];
