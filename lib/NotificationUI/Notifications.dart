import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/NotificationUI/NotifyUI.dart';

class Notifications extends StatelessWidget {

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
      appBar: AppBar(
        leading: AppBarLeading(scaffoldKey),
        title: AppBartitle(),
      ),
        body: NotifyUI());
  }
}
