import 'package:flutter/material.dart';
import 'package:linkendin_clone/HomePageUI/HomeProvider.dart';
import 'package:linkendin_clone/Strings.dart';
import 'package:provider/provider.dart';


class SearchUI extends StatelessWidget {
  TextEditingController tc;
  SearchUI(this.tc);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 230, 223, 0.9),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      color: Colors.white,
                      height: size.height / 100 * 17,
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Try Searching for"),
                          SearchOption("Flutter", tc),
                          SearchOption("Ecorp Tech Giant", tc),
                        ],
                      ),
                    ),
                    News(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class SearchOption extends StatelessWidget {
  String name;
  TextEditingController tc;

  SearchOption(this.name, this.tc);
  @override
  Widget build(BuildContext context) {
    HomeProvider hp = Provider.of<HomeProvider>(context);
    return Container(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search, color: Colors.grey.shade800,size: 18,),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ],
          ),
          IconButton(
            onPressed: (){
              hp.setsearch = name;
              tc.text = hp.getsearch;
            },
            icon: Icon( Icons.keyboard_arrow_up_outlined,  color: Colors.grey.shade800),
    ),
        ],
      ),
    );
  }
}


class News extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only( right: 15, left: 15, top: 10.0),
        color: Colors.white,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today's news and views",
          style: TextStyle(
              fontSize: 14,
              letterSpacing: 1.0,
          ),),
            Column(
                children: [
                  NewsTiles("Heading",
                      "Sub", NewsLinks.news1),
                  Divider(
                    thickness: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  NewsTiles("heading", "Sub", StringData.FeedPostImage),
                  Divider(
                    thickness: 1.0,
                    color: Colors.grey.shade400,
                  ),NewsTiles("heading", "Sub", StringData.FeedPostImage),
                  Divider(
                    thickness: 1.0,
                    color: Colors.grey.shade400,
                  ),NewsTiles("heading", "Sub", StringData.FeedPostImage),
                  Divider(
                    thickness: 1.0,
                    color: Colors.grey.shade400,
                  ),
                  NewsTiles("heading", "Sub", StringData.FeedPostImage),
                  Divider(
                    thickness: 1.0,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}


class NewsTiles extends StatelessWidget {
  String heading;
  String subheading;
  String url;

  NewsTiles(this.heading, this.subheading, this.url);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10.0),
            alignment: Alignment.centerLeft,
           // color: Colors.blue,
            width: size.width / 100 * 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(heading,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold
                ),),
                Text(subheading,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 13,
                    color: Colors.grey.shade800,
                  ),),
              ],
            ),
          ),
          Container(
            width: size.width / 100 * 20,
            height: size.width / 100 * 20,
            child: Image.network(url),
          ),
        ],
      ),
    );
  }
}
