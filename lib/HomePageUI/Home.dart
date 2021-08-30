import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/HomePageUI/DrawerUI.dart';
import 'package:linkendin_clone/Strings.dart';
import 'package:provider/provider.dart';
import 'FeedPost.dart';
import 'HomeProvider.dart';
import 'StoriesUI.dart';

class Home extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
        appBar: AppBar(
          leading: AppBarLeading(scaffoldKey),
          title: AppBartitle(),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  StoriesUI(),
                  FeedPost(true, StringData.FeedCaption, StringData.OtherStory
                  , "Angela Moss", "Account executive at Allsafe Cyber security",
                  "33", "3 Comments"),
                  FeedPost(false, StringData.TyrellQuote, StringData.TyrellImage,
                  "Tyrell Wellick", "Senior Vice President at E-Corp", "999",
                  ""),
                ],
              ),
            ),
          ),
        ),
      drawer:  Drawer(
        child: DrawerUI(),
      ),
    );
  }
}
