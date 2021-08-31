import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/Strings.dart';

class JobsUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 15.0, top: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: CUText("Recommended for you", TextAlign.start, 14.0, true),
            ),
            SingleJob("Python - Django", "Backyard Servers",
                "Mumbai, Maharashtra, India","2 weeks ago", JobsLinks.job1,
                '111 applicants'),
           Border(),
            SingleJob("Php Developer", "Digitize Pvt Ltd", "Jaipur, India",
                "6 days ago",  JobsLinks.job2),
            Border(),
            SingleJob("Flutter Developer", "App dev Co.", "Bangalore, India",
                "3 days ago",  JobsLinks.job3,'33 applicants', true),
            Border(),
            SingleJob("UI/UX Designer", "Binary Developers", "Chennai, India",
                "1 month ago",  JobsLinks.job4, '66 applicants'),
            Border(),
            SingleJob("Block Chain Developer", "Crpto leaders", "Delhi, India",
                "1 day ago",  JobsLinks.job5,'', true),
            Border(),
            SingleJob("Volunteering", "Breath Fresh", "Mumbai, India",
                "10 days ago",  JobsLinks.job6, '11 applicants'),
          ],
        ),
      ),
    );
  }
}

class SingleJob extends StatelessWidget {
  String title;
  String subtitle;
  String location;
  String time;
  String url;
  bool early;
  String applicants;
  SingleJob(this.title, this.subtitle, this.location, this.time, this.url,
       [this.applicants = '', this.early = false]);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: early ? size.height / 100 * 21 : size.height / 100 * 16 ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Pictures(url,  size.width / 100 * 13, size.width / 100 * 12,
                    BoxFit.cover),
               BasicInfo(title,subtitle,location,time,early,applicants),
              ],
            ),
          ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CUIcon(Icons.bookmark_border_rounded,Colors.grey.shade700),
              ),
        ],
      ),
    );
  }
}

class BasicInfo extends StatelessWidget {
  String title;
  String subtitle;
  String location;
  String time;
  bool early;
  String applicants;

  BasicInfo(this.title, this.subtitle, this.location, this.time, this.early,
      this.applicants);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
                child: CUText(title, TextAlign.start,
                    16.0, true),
              ),
              CUText(subtitle, TextAlign.start, 14.0, false),
              Padding(
                padding:EdgeInsets.symmetric(vertical: 5.0),
                child: CUText(location,
                    TextAlign.start, 12.0, false,
                    Colors.grey.shade800),
              ),
              early ? Row(
                children: [
                  CUIcon(Icons.watch_later_outlined, Colors.green.shade800),
                  CUText("Be an early applicant", TextAlign.start,
                      13, false),
                ],
              ) : Container(),
            ],
          ),
          Applicants(time, applicants),
        ],
      ),
    );
  }
}


class Applicants extends StatelessWidget {
  String time;
  String applicants;

  Applicants(this.time, this.applicants);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: CUText(time, TextAlign.start, 11.0, false,
                Colors.grey.shade800),
          ),
          applicants.length > 0 ?Container(
            width: 3.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              shape: BoxShape.circle,
            ),
          ) : Container(),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: CUText(applicants, TextAlign.start, 11, true,
                Colors.green.shade800),
          ),

        ],
      ),
    );
  }
}

class Border extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Divider(
      thickness: 2.0,
      height: 10.0,
      indent: size.width / 100 * 15,
      color: Colors.grey.shade300,
    );
  }
}
