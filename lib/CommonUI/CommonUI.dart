import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/HomePageUI/HomeSubPages/Search.dart';
import 'package:linkendin_clone/JobsUI/JobBottomsheet.dart';
import 'package:linkendin_clone/Strings.dart';

class ProfileImage extends StatelessWidget {
  double radius;
  Color color;
  EdgeInsetsGeometry margin;
  double width;
  String url;

  ProfileImage(this. url, this.color,this.margin, [this.radius = 12.0, this.width = 1.5]);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color, width: width),
      ),
      child: CircleAvatar(
        minRadius: radius,
        backgroundImage: NetworkImage(url,
        scale: 2.0),
      ),
    );
  }
}


class AppBarLeading extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;

  AppBarLeading(this.scaffoldKey);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: () {
            if (!scaffoldKey.currentState!
                .isDrawerOpen) { //check if drawer is closed
              scaffoldKey.currentState!.openDrawer();
            }
          },
          child: ProfileImage(StringData.ProfileImage, Colors.black, EdgeInsets.all(0.0))),
    );
  }
}

class AppBartitle extends StatelessWidget {
  bool jobs;

  AppBartitle([this.jobs = false]);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: size.width / 100 * 50,
                padding:  EdgeInsets.symmetric(vertical: 15.0),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(
                    height: 0.5,
                  ),
                  cursorHeight: 0.5,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                      color: Colors.black,),
                    labelText: "Search",
                    fillColor: Color.fromRGBO(238, 243, 247, 0.9),
                    filled: true,
                  ),
                  onTap: (){
                    Navigator.of(context).pushNamed(Search.id);

                    FocusScopeNode currentFocus = FocusScope.of(context);
                      currentFocus.unfocus();

                  },
                ),
              ),
              Container(
                color: Color.fromRGBO(238, 243, 247, 0.9),
                child: jobs? Container(): IconButton(
                    onPressed:(){},
                    icon: Icon(Icons.qr_code_rounded,
                      color: Colors.black,)),
              )
            ],
          ),
         jobs? IconButton(
             onPressed: (){
               showModalBottomSheet(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                       topRight: Radius.circular(10.0),
                     ),
                   ),
                   context: context,
                   builder: (context){
                     return JobBottomSheet();
                   });
             },
             icon: CUIcon(Icons.more_vert, Colors.grey.shade800))
             : Container(),
          Container(
            width: size.width / 100 * 13,
            child: Icon(Icons.message_outlined,
              color: Colors.black,),
          ),
        ],
      ),
    );
  }
}

class ListofOptions extends StatelessWidget {
  IconData icon;
  String title;

  ListofOptions(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CUIcon(icon,Colors.grey.shade800),
      title: CUText(title, TextAlign.start, 12, true, Colors.grey.shade800),
    );
  }
}