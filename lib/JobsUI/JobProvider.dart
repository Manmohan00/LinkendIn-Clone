

import 'package:flutter/cupertino.dart';

class JobProvider extends ChangeNotifier{
  bool bookmark = false;

  set setmark(bool m){
    this.bookmark = m;
  }

  bool get getmark{
    return this.bookmark;
  }
}