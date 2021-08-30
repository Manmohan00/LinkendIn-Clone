

import 'package:flutter/cupertino.dart';

class PostProvider extends ChangeNotifier{
  int _selected = 0;
  bool _post = false;

  set setpost(bool r){
    this._post = r;
    notifyListeners();
  }

  bool get getpost{
    return this._post;
  }

  set setradio(int r){
    this._selected = r;
    notifyListeners();
  }

  int get getradio{
    return this._selected;
  }
}