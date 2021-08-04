import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'package:testing/model/data/Products.dart';

class ProductsNotifier with ChangeNotifier {
  List<ProdProducts> _prodProductsList = [];
  late ProdProducts _currentProdProduct;

  UnmodifiableListView<ProdProducts> get productsList =>
      UnmodifiableListView(_prodProductsList);

  ProdProducts get currentProdProduct => _currentProdProduct;

  set productsList(List<ProdProducts> prodProductsList) {
    _prodProductsList = prodProductsList;
    notifyListeners();
  }

  set currentProdProduct(ProdProducts prodProducts) {
    _currentProdProduct = prodProducts;
    notifyListeners();
  }
}
