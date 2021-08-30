import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/SmallUIComponents.dart';
import 'package:linkendin_clone/PostUI/PostProvider.dart';
import 'package:provider/provider.dart';

class AppBarUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PostProvider pp = Provider.of<PostProvider>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CUText("Share post", TextAlign.start, 20, true),
          CUText("Post", TextAlign.end, 17, true, pp.getpost ? Colors.black :
          Colors.grey.shade300),
        ],
      ),
    );
  }
}
