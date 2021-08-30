import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkendin_clone/BottomNavProvider.dart';
import 'package:linkendin_clone/HomePageUI/HomeProvider.dart';
import 'package:linkendin_clone/HomePageUI/HomeSubPages/Search.dart';
import 'package:linkendin_clone/JobsUI/Jobs.dart';
import 'package:linkendin_clone/PostUI/PostProvider.dart';
import 'package:provider/provider.dart';

import 'HomePageUI/Home.dart';
import 'Network/Network.dart';
import 'NotificationUI/Notifications.dart';
import 'PostUI/Post.dart';

void main() {
  runApp(MyApp()
  );
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (context) => BottomProvider(),
    ),
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => PostProvider(),
          ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(233, 230, 223, 0.9),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
      ),
      home: Selected(),
      routes: {
        Search.id: (context) => Search(),
        Post.id: (context) => Post(),
      },
    ),
    );
  }
}

class Selected extends StatelessWidget {
  List<Widget> BottomNav = [Home(), Network(),Post(), Notifications(), Jobs()];
  @override
  Widget build(BuildContext context) {
    BottomProvider bp = Provider.of<BottomProvider>(context);
    return Scaffold(
      body: BottomNav[bp.getindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bp.getindex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: bp.getindex == 0 ?  Icon(Icons.home_filled)
                  :  Icon(Icons.home) ,
              label: "home"),
          BottomNavigationBarItem(
              icon: bp.getindex == 1 ? Icon(Icons.people_alt):
              Icon(Icons.people_outline),
              label: "Network"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,
              size: bp.getindex == 2 ? 30.0: 25.0,),
              label: "Post"),
          BottomNavigationBarItem(
              icon:bp.getindex == 3 ? Icon(Icons.notifications_on_sharp):
              Icon(Icons.notifications),
              label: "Notifications"
          ),
          BottomNavigationBarItem(
              icon:bp.getindex == 4 ? Icon(Icons.cases_sharp):
              Icon(Icons.cases_outlined),
              label: "Jobs")
        ],
        onTap: (index){
          if(index == 2){
            Navigator.pushNamed(context, Post.id);
          }
          else{
            bp.setindex = index;
          }
        },
      ),
    );
  }
}

