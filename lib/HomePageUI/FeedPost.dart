import 'package:demoji/demoji.dart';
import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:readmore/readmore.dart';
import '../Strings.dart';

class FeedPost extends StatelessWidget {
  bool showImage;
  String caption;
  String imageurl;
  String userName;
  String userPost;
  String likes;
  String comment;
  bool showcomment;

  FeedPost(this.showImage, this.caption, this.imageurl, this.userName, this.userPost,
      this.likes, this.comment, [this.showcomment = true]);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         showcomment ? CommentedOnthis() : Container(),
          showcomment ? Divider(
            indent: 10.0,
            endIndent: 10.0,
            thickness: 1.0,
            height: 10.0,
            color: Colors.grey.shade400,
          ) : Container(),
          FeedPostProfile(imageurl, userName, userPost),
          Caption(caption),
          showImage ? FeedPostImage() : Container(),
          TotalLikes(likes, comment),
          Divider(
            indent: 10.0,
            endIndent: 10.0,
            thickness: 1.0,
            color: Colors.grey.shade400,
          ),
          LikeComment(),
          showImage ? CommentProfile() : Container(),
        ],
      ),
    );
  }
}

class FeedPostProfile extends StatelessWidget {
  String url;
  String userName;
  String userWork;

  FeedPostProfile(this.url, this.userName, this.userWork);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ProfileImage(url, Colors.transparent, EdgeInsets.symmetric(horizontal: 5.0),
                20.0, 3),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 15.5
                ),),
              Text(userWork,
              style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(109, 109, 108, 1.0),
              ),),
              Text("1d",
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromRGBO(109, 109, 108, 1.0),
                ),),
              ],
          )
        ],
      ),
    );
  }
}

class CommentedOnthis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          height: size.height / 100 * 5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:  EdgeInsets.only(right: 2.0),
                margin: EdgeInsets.only(left: 10.0),
                child: Text("Darleen",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),),
              ),
              Container(
                padding:  EdgeInsets.only(right: 2.0),
                child: Text("commented on this",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ),
            ],
          ),
        ),
        IconButton(
            alignment: Alignment.bottomCenter,
            onPressed:(){},
            icon: Icon(Icons.keyboard_arrow_down_sharp,
              color: Colors.grey,
              size: 25.0,)),
      ],
    );
  }
}


class Caption extends StatelessWidget {
  String caption;

  Caption(this.caption);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10.0),
      width: size.width / 100 * 95,
      child: ReadMoreText(
        "$caption",
        trimLines: 3,
        colorClickableText: Color.fromRGBO(109, 109, 108, 1.0),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'he',
        moreStyle: TextStyle(fontSize: 14,
            color:  Color.fromRGBO(109, 109, 108, 1.0),
            wordSpacing: 1.0,
            letterSpacing: 1.0),
        style: TextStyle(fontSize: 15,
        color: Colors.black,
        wordSpacing: 1.0,
        letterSpacing: 1.0),
      ),
    );
  }
}

class FeedPostImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      color:  Color.fromRGBO(233, 230, 223, 0.9),
      child: Image.network(StringData.FeedPostImage,
      fit: BoxFit.fitWidth,
      ),
    );
  }
}

class TotalLikes extends StatelessWidget {
  String likes;
  String comment;

  TotalLikes(this.likes,this.comment);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width / 100 * 40,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 3.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade800,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    size: 16.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 3.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange.shade400,
                  ),
                  child: Icon(
                    Icons.lightbulb,
                    size: 16.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.blue.shade800,
                  ),
                  child:Text(Demoji.heart,
                  style: TextStyle(
                    color: Colors.red,
                  ),),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(likes,
                      style: TextStyle(
                        color: Color.fromRGBO(109, 109, 108, 1.0),
                      ),),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 8.0),
            child: Text(comment,
              style: TextStyle(
                color: Color.fromRGBO(109, 109, 108, 1.0),
              ),),
          ),
        ],
      ),
    );
  }
}

class LikeComment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconText("Like", Icons.thumb_up_alt_outlined),
          IconText("Comment", Icons.message_outlined),
          IconText("Share", Icons.share),
          IconText("Send", Icons.send),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  String text;
  IconData icon;

  IconText(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 100 * 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
              onPressed: (){},
              child: Column(
        children: [
          Icon(icon, size: 20.0,
          ),
          Text(text,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),),
        ],
    )),
        ],
      ),
    );
  }
}

class CommentProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ProfileImage(StringData.Darleen, Colors.transparent, EdgeInsets.symmetric(horizontal: 5.0),
                18.0, 3),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: size.width / 100 * 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1.0),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0), bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Darleen Alderson",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16
                        ),),
                      Text("Freelance Hacker",
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 1.0,
                          color: Color.fromRGBO(109, 109, 108, 1.0),
                        ),),
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0),
                        child: Text("That is so True!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16
                          ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: size.width / 100 * 5,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 1.0, color: Colors.grey),
                            )
                          ),
                          child: MaterialButton(
                              onPressed:(){},
                              minWidth: size.width / 100 * 15,
                              child: Text("Like")),
                        ),
                        Container(
                          height: size.width / 100 * 5,
                          child: MaterialButton(
                              onPressed:(){},
                              minWidth: size.width / 100 * 15,
                              child: Text("Reply")),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}