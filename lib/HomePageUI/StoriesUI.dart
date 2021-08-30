
import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/Strings.dart';

class StoriesUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      height: size.height / 100 * 18,
      width: size.width,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ProfileImage(StringData.ProfileImage, Colors.transparent,EdgeInsets.symmetric(horizontal: 15.0),
                        35.0),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 1.0,
                      ),
                      ],
                      ),
                        child: Icon(Icons.add,
                        color: Color.fromRGBO(0, 115, 176, 1.0),
                        size: 28.0,)),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 15.0),
                    child: Text("Your Story",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15.0
                    ),))
              ],
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileImage(StringData.OtherStory, Color.fromRGBO(97, 107, 200, 0.9), EdgeInsets.symmetric(horizontal: 5.0),
                  35.0, 3),
              Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text("Angela",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15.0
                    ),))
            ],
          ),
        ],
      ),
    );
  }
}
