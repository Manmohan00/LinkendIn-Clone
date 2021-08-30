import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/Strings.dart';

class ListTiles extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        children: [
          Container(
            child: ListTile(
              tileColor: Colors.white,
              title: Text("Manage my network",
              style: TextStyle(
                color: Colors.blue.shade800,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: ListTile(
              tileColor: Colors.white,
              title: Text("Invitations",
                style: TextStyle(
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ),
        ],
      ),
    );
  }
}


class OtherProfiles extends StatelessWidget {
  List<String> username;
  List<String> imageurl;
  List<String> backimageurl;
  List<String> subheading;
  List<String> mutual;
  String heading;

  OtherProfiles(this.username, this.subheading, this.imageurl,
      this.backimageurl, this.mutual, this.heading);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            width: size.width,
              child: Text(heading,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
              ),),),
          GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            childAspectRatio: 0.7,
            physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: [
            ProfileContainer(username[0],subheading[0],imageurl[0],backimageurl[0], mutual[0]),
            ProfileContainer(username[1],subheading[1],imageurl[1],backimageurl[1], mutual[1]),
            ProfileContainer(username[2],subheading[2],imageurl[2],backimageurl[2], mutual[2]),
            ProfileContainer(username[3],subheading[3],imageurl[3],backimageurl[3], mutual[3]),
          ],),
          MaterialButton(
            onPressed: (){},
              child:  CUText("See all",TextAlign.center,15, true,
                  Colors.blue.shade800),),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  String username;
  String imageurl;
  String backimageurl;
  String subheading;
  String mutual;

  ProfileContainer(this.username, this.subheading, this.imageurl,
      this.backimageurl, this.mutual);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
          //color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.5),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          children: [
            Positioned(
              top: size.height / 100 * 10,
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: size.height / 100 * 5),
                height: size.height / 100 * 30,
                width: size.width / 100 * 45,
                color: Colors.white,
                child: ProfileContainerContent(username,subheading, mutual),
              ),
            ),
            Container(
              height: size.height / 100 * 10,
              width: size.width / 100 * 50,
              color: Colors.grey,
              child: Stack(
                children: [
                  Container(
                    height: size.height / 100 * 10,
                    width: size.width / 100 * 50,
                    child: Image.network(backimageurl,
                    fit: BoxFit.cover,),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                      child: IconButton(
                        onPressed: (){},
                        icon: CUIcon(Icons.close, Colors.white),)),
                ],
              ),
            ),
            Positioned(
              top: size.height / 100 * 3,
              left: size.width / 100 * 13,
              child: ProfileImage(imageurl, Colors.transparent,
                  EdgeInsets.symmetric(horizontal: 0.0), 40.0, 0),
            ),
          ],
        ),
      )
    );
  }
}

class ProfileContainerContent extends StatelessWidget {
  String username;
  String subheading;
  String mutual;

  ProfileContainerContent(this.username, this.subheading, this.mutual);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      width: size.width / 100 * 45,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CUText(username,TextAlign.center,16, true),
              Container(
                height: size.height / 100 * 6,
                child: CUText(subheading,TextAlign.center,11, false, Colors.grey.shade800
                    ,2),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CUIcon(Icons.people_outline_outlined, Colors.grey.shade900,
                    18),
                Text(mutual,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 10.5,
                  ),),
              ],
            ),
          ),
         Padding(
           padding: EdgeInsets.only(bottom: 10.0),
           child: MaterialButton(
             minWidth: size.width / 100 * 40,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20.0),
               side: BorderSide(color: Colors.blue.shade900),
             ),
                onPressed: (){},
            child:  CUText("Connect",TextAlign.center,16, true
                ,Colors.blue.shade800, 1,1.0 ),),
         )
        ],
      ),
    );
  }
}


class Events extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.white,
      width: size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            width: size.width,
            child: CUText("Online events for you",TextAlign.start,15,
                false )),
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
             EventsSingle("The Hacking Contest - May the smartest win",
             "Sat, Nov, 10:00 PM", "3333 Attendees", EventsLinks.event1,
                 NetworkLinks.bkg4),
              EventsSingle("Don't Flutter yourself - The Flutter learners meet",
                  "Mon, Dec, 10:00 AM", "6666 Attendees", EventsLinks.flutter,
                  EventsLinks.event2),
            ],),
          MaterialButton(
              onPressed: (){},
              child: CUText("See all",TextAlign.center,15, true,
                  Colors.blue.shade800),),
        ],
      ),
    );
  }
}

class EventsSingle extends StatelessWidget {
  String name;
  String time;
  String attend;
  String img;
  String bkgimg;

  EventsSingle(this.name, this.time, this.attend, this.img, this.bkgimg);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      height: size.height/ 100 * 32,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.5),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            children: [
              Positioned(
                top: size.height / 100 * 15,
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: size.height / 100 * 8),
                  height: size.height / 100 * 18,
                  width: size.width,
                  color: Colors.white,
                  child: EventText(name, time, attend),
                ),
              ),
              Container(
                height: size.height / 100 * 15,
                width: size.width,
                color: Colors.grey,
                child: Stack(
                  children: [
                    Container(
                      height: size.height / 100 * 15,
                      width: size.width,
                      child: Image.network(bkgimg,
                        fit: BoxFit.cover,),
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: CUIcon(Icons.close, Colors.white),),),
                  ],
                ),
              ),
              Positioned(
                top: size.height / 100 * 7,
                left: size.width / 100 * 5,
                child: Image.network(
                  img,
                  width: size.width / 100 * 30,
                  height: size.width / 100 * 25,),
              ),
              Positioned(
                right: size.width / 100 * 3,
                top: size.height / 100 * 15,
                child: MaterialButton(
                  minWidth: size.width / 100 * 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.blue.shade900),
                  ),
                  onPressed: () {},
                  child: Text("View",
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1.0
                    ),),),
              )
            ],
          ),
        )
    );
  }
}

class EventText extends StatelessWidget {
  String name;
  String time;
  String attend;

  EventText(this.name, this.time, this.attend);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 100 * 90,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CUText(name,TextAlign.start,15, true),
          CUText(time,TextAlign.start,12, false,
              Colors.grey.shade800),
          CUText(attend,TextAlign.start,10, false,
              Colors.grey.shade800),
        ],
      ),
    );
  }
}


