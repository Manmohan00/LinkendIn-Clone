import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/PostUI/BottomSheets.dart';
import 'package:provider/provider.dart';

import '../Strings.dart';
import 'PostProvider.dart';

class PostUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PostProvider pp = Provider.of<PostProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: size.height / 100 * 80,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileImage(StringData.ProfileImage, Colors.transparent,EdgeInsets.symmetric(horizontal: 15.0),
                        22.0),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:EdgeInsets.symmetric(horizontal: 3.0),
                          child: CUText("Elliot Alderson", TextAlign.start, 14, true),
                        ),
                       MaterialButton(
                         splashColor: Colors.grey.shade400,
                         height: 25,
                         elevation: 0.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0),
                           side: BorderSide(color: Colors.black)
                         ),
                         padding: EdgeInsets.all(0.0),
                           onPressed: (){
                             showModalBottomSheet(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                             topRight: Radius.circular(10.0),
                               ),
                               ),
                                 context: context,
                                 builder: (context){
                                   return BottomSheetfirst();
                                 });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: CUIcon(Icons.people_outline_outlined,
                                    Colors.grey.shade800, 18.0),
                              ),
                              CUText("Anyone", TextAlign.center, 12, true,
                                  Colors.grey.shade800),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: CUIcon(Icons.arrow_drop_down_sharp,
                                    Colors.grey.shade800, 18.0),
                              ),
                            ],
                          ),),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    onChanged: (s){
                      if(s.length > 0){
                        pp.setpost = true;
                      }
                      if(s.length == 0){
                        pp.setpost = false;
                      }
                    },
                    maxLines: 20,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText: "What do you want to talk about?"
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: SizedBox(
                    width: size.width / 100 * 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CUIcon(Icons.camera_alt, Colors.grey.shade800),
                        CUIcon(Icons.switch_video_rounded, Colors.grey.shade800),
                        CUIcon(Icons.image_outlined, Colors.grey.shade800),
                        IconButton(
                          onPressed: (){
                            showBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                ),
                                context: context,
                                builder: (context){
                                  return BottomSheetsecond();//The content to be inside the modal sheet
                                });
                          },
                            icon: CUIcon(Icons.linear_scale, Colors.grey.shade800)),
                      ],
                    ),
                  ),
                ),
            Container(
              child: SizedBox(
                width: size.width / 100 * 45,
                height: size.height/100 * 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CUIcon(Icons.message_outlined, Colors.grey.shade800, 20),
                   CUText("Connections", TextAlign.center, 14, true, Colors.grey.shade800),
                  ],
                ),
              ),
            )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
