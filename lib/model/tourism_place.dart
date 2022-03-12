class TourismPlace{
  String name;
  String location;
  String imageAsset;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset
  });

 static var tourismPlaceList = [
    TourismPlace(name: "Sby submarine", location: "jl pemuda", imageAsset: "/assets/images/img08.jpg"),
    TourismPlace(name: "Sby submarine2", location: "jl pemuda12", imageAsset: "/assets/images/img08.jpg"),
  ];
}