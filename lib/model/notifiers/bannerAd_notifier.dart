import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:testing/model/data/bannerAds.dart';

class BannerAdNotifier with ChangeNotifier {
  List<BannerAds> _bannerAdsList = [];
  late BannerAds _bannerAds;

  UnmodifiableListView<BannerAds> get bannerAdsList =>
      UnmodifiableListView(_bannerAdsList);

  BannerAds get bannerAds => _bannerAds;

  set bannerAdsList(List<BannerAds> bannerAdsList) {
    _bannerAdsList = bannerAdsList;
    notifyListeners();
  }

  set bannerAds(BannerAds bannerAds) {
    _bannerAds = bannerAds;
    notifyListeners();
  }
}
