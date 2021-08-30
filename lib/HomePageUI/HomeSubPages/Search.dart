import 'package:flutter/material.dart';
import 'package:linkendin_clone/HomePageUI/HomeSubPages/SearchUI.dart';
import 'package:provider/provider.dart';

import '../HomeProvider.dart';

class Search extends StatelessWidget {
  static const String id = 'Search';
  TextEditingController txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    HomeProvider hp = Provider.of<HomeProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 230, 223, 0.9),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,
            color: Colors.black,)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width / 100 * 66,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: TextField(
                autofocus: true,
                controller: txt,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Search",
                  fillColor: Colors.white,
                ),
                onTap: () {

                },
              ),
            ),
            Container(
              color: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.qr_code_rounded,
                    color: Colors.blue.shade800,
                  )),
            ),
          ],
        ),
      ),
      body: SearchUI(txt),
    );
  }
}
