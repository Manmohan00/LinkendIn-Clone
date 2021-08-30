import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/PostUI/PostProvider.dart';
import 'package:provider/provider.dart';

class BottomSheetfirst extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
     height: size.height / 100 * 40,
      child: (
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
      width: size.width,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: size.width / 100 * 16,
              height: 6.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(20.0),
      ),
            ),
          ),
          Container(
            width: size.width / 100 * 80,
            height: size.height / 100 * 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CUText("Who can see this post?", TextAlign.start, 16, true),
                CUText(
                    "Your post will be visible on feed, your profile and search results",
                    TextAlign.start, 11, true, Colors.grey.shade800,2),
              ],
            ),
          ),
          RadioRow(
              0, "Anyone", "Anyone on or off LinkedIn", Icons.account_circle),
          RadioRow(1, "Connections only", "Connections on LinkedIn",
              Icons.people_outline_outlined),
          RadioRow(2, "Group members", "Select a group you're in",
              Icons.people_rounded),
        ],
      )),
    );
  }
}

class RadioRow extends StatelessWidget {
  int value;
  String title;
  String subtitle;
  IconData icon;
  RadioRow(this.value, this.title, this.subtitle, this.icon);

  @override
  Widget build(BuildContext context) {
    PostProvider pp = Provider.of<PostProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CUIcon(icon, Colors.grey.shade800),
           Container(
             padding: EdgeInsets.only(left: 10.0),
             width: size.width / 100 * 70,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 CUText(title, TextAlign.start, 14, true),
                    CUText(subtitle, TextAlign.start, 11, false),
                  ],
                ),
              ),
              Container(
                width: size.width / 100 * 10,
                child: RadioListTile(
                  contentPadding: EdgeInsets.all(0.0),
                  value: value,
                  groupValue: pp.getradio,
                  activeColor: Colors.green.shade800,
                  onChanged: (r) {
                    pp.setradio = value;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class BottomSheetsecond extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      height: size.height / 100 * 70,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          width: size.width,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            width: size.width / 100 * 16,
            height: 6.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
            Column(
              children: [
               ListofOptions("Add a photo", Icons.image_outlined),
                ListofOptions("Take a Video", Icons.camera_alt),
                ListofOptions("Celebrate an Occasion", Icons.celebration),
                ListofOptions("Add a document", Icons.document_scanner_rounded),
                ListofOptions("Share that you're hiring", Icons.cases_outlined),
                ListofOptions("Find an expert", Icons.person_search),
                ListofOptions("Create a poll", Icons.poll_outlined),
                ListofOptions("Share a story", Icons.image_rounded),
              ],
            )
        ],
        ),
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
