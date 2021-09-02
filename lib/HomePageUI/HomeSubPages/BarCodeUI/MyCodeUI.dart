import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';

import '../../../Strings.dart';

class MyCodeUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StackUI(),
              BottomButtons(),
            ],
          ),
        ));
  }
}

class StackUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height / 100 * 60,
          ),
          Positioned(
            top:size.height / 100 * 5.0,
            left: size.width / 100 * 10.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              height: size.height / 100 * 50,
              width: size.width / 100 * 80,
            ),
          ),
          Positioned(
            top: size.height / 100 * 0,
            left: size.width / 100 * 40,
            child: ProfileImage(StringData.ProfileImage,
                Colors.transparent,EdgeInsets.symmetric(horizontal: 0.0),
                40.0),
          ),
          Positioned(
            top: size.height / 100 * 14,
            // bottom: size. height / 100 * 40,
            left: size.width / 100 * 34,
            child:SizedBox(
              width: size.width / 100 * 35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CUText("Elliot Alderson",TextAlign.center,14,true),
                  CUText("Mr.Robot | Networks Expert",TextAlign.center,14,false,
                      Colors.grey.shade800, 2),
                  Container(
                    margin: EdgeInsets.only(top: 30.0, right: 10.0),
                    child: (
                        CUIcon(Icons.qr_code_scanner_outlined, Colors.blue.shade800,
                            125)
                    ),
                  )
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}



class BottomButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CUIcon(Icons.share, Colors.grey.shade800),
              MaterialButton(
                onPressed:(){},
                child: CUText("Share my code", TextAlign.center,
                    14,true, Colors.grey.shade800),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CUIcon(Icons.save_alt, Colors.grey.shade800),
              MaterialButton(
                onPressed:(){},
                child: CUText("Save to gallery", TextAlign.center,
                    14,true, Colors.grey.shade800),),
            ],
          ),
        ],
      ),
    );
  }
}
