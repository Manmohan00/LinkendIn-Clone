import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/PostUI/AppBarUI.dart';
import 'package:linkendin_clone/PostUI/PostUI.dart';
import 'package:provider/provider.dart';
import '../BottomNavProvider.dart';


class Post extends StatelessWidget {
  static const String id = "Post";


  @override
  Widget build(BuildContext context) {
    BottomProvider bp = Provider.of<BottomProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5.0,
        leading: IconButton(
          onPressed: (){
            bp.setindex = 0;
           Navigator.of(context).pop();
          },
          icon: CUIcon(Icons.close, Colors.grey.shade800, 26),
          ),
        title: AppBarUI(),
      ),
        body: SingleChildScrollView(
            child: PostUI()),
        );
  }
}
