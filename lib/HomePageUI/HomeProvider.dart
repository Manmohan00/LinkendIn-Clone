

import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier{
String _searchtitle = '';
bool _showBottom = false;

set setnav(bool n){
  this._showBottom = n;
  notifyListeners();
}

bool get getnav{
  return _showBottom;
}

set setsearch(String s){
  this._searchtitle = s;
  notifyListeners();
}

String get getsearch{
  return this._searchtitle;
}
}