import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';

import '../Strings.dart';

class DrawerUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height / 100 * 20,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Profile(),
              ),
            ),
            ListofGroups(),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      color: Color.fromRGBO(242, 243, 238, 0.9),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: ProfileImage(StringData.ProfileImage, Colors.transparent, EdgeInsets.all(0.0),
                25.0),
          ),
          Container(
            margin: EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Elliot Alderson",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width / 100 * 18,
                      child: MaterialButton(
                        padding: EdgeInsets.all(0.0),
                          onPressed: (){},
                          child: Text("View Profile",
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                          ),)),
                    ),
                    Container(
                      width: size.width / 100 * 18,
                      child: MaterialButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: (){},
                          child: Text("Settings",
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold
                            ),)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
              onPressed:(){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
          color: Colors.black,
          iconSize: 30.0,),
        ],
      ),
    );
  }
}

class ListofGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          TextTitle("Groups"),
          Listitems("Flutter", Icons.people_outline),
          Listitems("Black-Hats", Icons.laptop,),
          Listitems("Stop ECorp!",Icons.group_work_outlined),
          Divider(
            thickness: 1.0,
            color: Colors.grey.shade400,
          ),
          TextTitle("Followed Hashtags"),
          Listitems("stopecorp",Icons.tag),
          Listitems("darknet", Icons.tag),
          Listitems("mrrobot",Icons.tag),
          Listitems("trojans",Icons.tag),
          Listitems("mobilehacks", Icons.tag),
          Listitems("flutter",Icons.tag),
          Divider(
            thickness: 1.0,
            color: Colors.grey.shade400,
          ),
          TextTitle("Events"),
          Listitems("Meet-up", Icons.people_alt),
          Divider(
            thickness: 1.0,
            color: Colors.grey.shade400,
          ),
          TextTitle("Discover more"),

        ],
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  String title;

  TextTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 13.0),
      child: Text(title,
        style: TextStyle(
            color: Color.fromRGBO(32, 98, 166, 1.0),
            fontSize: 18
        ),
      ),
    );
  }
}


class Listitems extends StatelessWidget {
 IconData icon;
 String name;

 Listitems(this.name, this.icon);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child:  Row(
        children: [
         Padding(
           padding: EdgeInsets.only(right: 10.0),
           child: Icon(icon, color: Colors.grey.shade700,
           size: 20,),
         ),
          Text(name,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ],
      ),);
  }
}

