

import 'package:flutter/cupertino.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeProvider extends ChangeNotifier{
String _searchtitle = '';
bool _showBottom = false;
bool _isgreen = true;


set setgreen(bool n){
  this._isgreen = n;
  notifyListeners();
}

bool get getgreen{
  return _isgreen;
}

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