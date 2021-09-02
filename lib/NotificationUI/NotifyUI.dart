import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/Strings.dart';

class NotifyUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10.0),
      child: ListView(
        children: [
         ListData("The secret to getting a job using social media",
             false, NotifyLinks.commonnotify, "6h", [''],['']),
          BorderNotify(),
          ListData("Tell us: Should you hide your emotions at work?",
              false,  NotifyLinks.commonnotify, "8h", [''],['']),
          BorderNotify(),
          ListData("",true,NotifyLinks.Networknotify, "12h",
              ['is looking for: ', 'See this and 3 other job recommendations'],
              ['A company ', 'Network manager '], true),
          BorderNotify(),
          ListData("You appeared in 33 searches this week",
              false,NotifyLinks.searchesnotify, "24h",
              ['', ''],
              [''], false),
          BorderNotify(),
          ListData("How social media makes you less productive",
              false, NotifyLinks.commonnotify, "6h", [''],['']),
          BorderNotify(),
          ListData("Tell us: How should be the work environment",
              false,  NotifyLinks.commonnotify, "8h", [''],['']),
          BorderNotify(),
          ListData("",true,JobsLinks.job3, "12h",
              ['is looking for: ', 'See this and 13 other job recommendations'],
              ['Company FGD ', 'Flutter developer'], true),
          BorderNotify(),
          ListData("You appeared in 43 searches this week",
              false,NotifyLinks.searchesnotify, "24h",
              ['', ''],
              [''], false),
          BorderNotify(),
        ],
      ),
    );
  }
}

class ListData extends StatelessWidget {
  String title;
  bool subtitle;
  String url;
  String hours;
  bool multi;
  List<String> multibold = [];
  List<String> multinormal;

  ListData(this.title, this.subtitle, this.url, this.hours,
  this.multinormal,this.multibold,[this.multi = false]);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      isThreeLine: subtitle ? true :false,
      subtitle: subtitle ? Subtitlebutton() : Container(),
      tileColor: Colors.white,
      leading: Pictures(url, size.width / 100 * 15,size.width / 100 * 15, BoxFit.fitWidth ),
      title: multi? Multitext(multinormal, multibold):
      CUText(title, TextAlign.start, 14, false, Colors.black, 3),
      trailing: Theend(hours),
    );
  }
}

class Subtitlebutton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(right: size.width / 100 * 30),
      child: MaterialButton(
        onPressed: (){},
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue.shade800),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: CUText("View jobs", TextAlign.center, 14, true, Colors.blue.shade800),
      ),
    );
  }
}


class Theend extends StatelessWidget {
  String hours;

  Theend( this.hours);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CUText(hours, TextAlign.center, 12, false, Colors.grey.shade800),
          CUIcon(Icons.more_vert, Colors.grey.shade800),
        ],
      ),
    );
  }
}

class Multitext extends StatelessWidget {
  List<String> bold;
  List<String> normal;

  Multitext(this.normal, this.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        maxLines: 3,
        text: TextSpan(style: TextStyle(color: Colors.black),
          children: [
            TextSpan(text: bold[0], style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black),),
            TextSpan(text: normal[0]),
            TextSpan(text: bold[1] , style: TextStyle(fontWeight: FontWeight.bold),),
            TextSpan(text: normal[1] )
          ]
        ),
      ),
    );
  }
}




class BorderNotify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Divider(
      thickness: 2.0,
      height: 20.0,
      //indent: size.width / 100 * 15,
      color: Colors.grey.shade300,
    );
  }
}
