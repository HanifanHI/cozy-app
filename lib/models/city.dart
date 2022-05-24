class City {
  int id;
  String imageUrl;
  String name;
  bool isPopular;

  City({
    required this.id,
    required this.imageUrl,
    required this.name,
    this.isPopular = false,
  });
}
