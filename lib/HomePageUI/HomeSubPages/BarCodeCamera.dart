import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/HomePageUI/HomeSubPages/BarCodeUI/MyCodeUI.dart';
import 'package:linkendin_clone/HomePageUI/HomeSubPages/BarCodeUI/ScanUI.dart';
import 'package:provider/provider.dart';

import '../HomeProvider.dart';

class BarCodeCamera extends StatelessWidget {
  static const String id = 'BarCodeCamera';

  @override
  Widget build(BuildContext context) {
    HomeProvider hp = Provider.of<HomeProvider>(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (n){
              if(n == 0){
                hp.setgreen = true;
              }
              if(n == 1){
                hp.setgreen = false;
              }
            },
            labelPadding: EdgeInsets.all(10.0),
            indicatorColor: Colors.green.shade800,
            labelColor: Colors.green.shade800,
            unselectedLabelColor: Colors.grey.shade800,
            tabs: [
              CUText("My code",TextAlign.center,14,true,
              hp.getgreen ? Colors.green.shade800 : Colors.black),
              CUText("Scan",TextAlign.center,14,true,
                  hp.getgreen ? Colors.black : Colors.green.shade800),
            ],
          ),
          leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: CUIcon(Icons.arrow_back, Colors.black)),
          title: CUText("LinkedIn QR code",TextAlign.start,18,true),
        ),
          body: TabBarView(
            children: [
             MyCodeUI(),
              ScanUI(),
            ],
             )),
    );
  }
}
