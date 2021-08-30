

import 'package:flutter/cupertino.dart';

class BottomProvider extends ChangeNotifier{
  int index = 0;

  set setindex(int n){
    this.index = n;
    notifyListeners();
  }

  int get getindex{
    return this.index;
  }
}