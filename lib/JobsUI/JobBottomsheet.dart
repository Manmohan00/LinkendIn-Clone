import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';

class JobBottomSheet extends StatelessWidget {

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
                ListofOptions("See my jobs", Icons.bookmark),
                ListofOptions("Manage job alerts", Icons.notifications),
                ListofOptions("Take Skill Assessments", Icons.playlist_add_check_rounded),
                ListofOptions("Prepare for interview", Icons.contact_page),
                ListofOptions("Post a job", Icons.add),
                ListofOptions("Manage application settings", Icons.settings),
              ],
            )
          ],
        ),
      ),
    );
  }
}
