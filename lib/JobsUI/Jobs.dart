import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/JobsUI/JobsUI.dart';

class Jobs extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          leading: AppBarLeading(scaffoldKey),
          title: AppBartitle(true),
        ),
        body: JobsUI(),
        );
  }
}
