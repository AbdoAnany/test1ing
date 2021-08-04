class ProdProducts {
  late  String productImage;
  late String name;
  late String brand;
  late double price;
  late double totalPrice;
  late String desc;
  late String moreDesc;
  late String foodType;
  late String lifeStage;
  late String flavor;
  late String weight;
  late String ingredients;
  late String directions;
   String? size;
  late String productID;
  late String pet;
  late String category;
  late String subCategory;
  late String service;
  late String tag;
  late  int quantity;

  ProdProducts.fromMap(Map<String, dynamic> data) {
    productImage = data["productImage"];
    name = data["name"];
    brand = data["brand"];
    price = data["price"];
    totalPrice = data["totalPrice"];
    desc = data["desc"];
    moreDesc = data["moreDesc"];
    foodType = data["foodType"];
    lifeStage = data["lifeStage"];
    flavor = data["flavor"];
    weight = data["weight"];
    ingredients = data["ingredients"];
    directions = data["directions"];
    size = data["size"];
    productID = data["productID"];
    pet = data["pet"];
    category = data["category"];
    subCategory = data["subCategory"];
    service = data["service"];
    tag = data["tag"];
    quantity = data["quantity"];
  }

  Map<String, dynamic> toMap() {
    return {
      'productImage': productImage,
      'name': name,
      'brand': brand,
      'price': price,
      'totalPrice': totalPrice,
      'desc': desc,
      'moreDesc': moreDesc,
      'foodType': foodType,
      'lifeStage': lifeStage,
      'flavor': flavor,
      'weight': weight,
      'ingredients': ingredients,
      'directions': directions,
      'size': size,
      'productID': productID,
      'pet': pet,
      'category': category,
      'subCategory': subCategory,
      'service': service,
      'tag': tag,
      'quantity': quantity,
    };
  }
}
