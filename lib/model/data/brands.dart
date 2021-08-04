class Brands {
  late String brandName;
  late String brandImage;

  Brands.fromMap(Map<String, dynamic> data) {
    brandName = data["brandName"];
    brandImage = data["brandsImage"];
  }
}
