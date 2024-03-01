import 'package:flutter/material.dart';

class FavrioteProvider with ChangeNotifier {
  List<int> favroiteList = [];

  clickFavriote(int index){
    favroiteList.contains(index)
        ? favroiteList.remove(index)
        : favroiteList.add(index);
    print(favroiteList);

    // Notify the change
    notifyListeners();
  }
}