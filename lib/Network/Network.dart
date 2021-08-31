import 'package:flutter/material.dart';
import 'package:linkendin_clone/CommonUI/CommonUI.dart';
import 'package:linkendin_clone/Network/NetworkUI.dart';
import 'package:linkendin_clone/Strings.dart';

class Network extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: AppBarLeading(scaffoldKey),
        title: AppBartitle(),
      ),
      body: Container(
        child:  SingleChildScrollView(
          child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTiles(),
                     OtherProfiles(
                       ["Gideon Goddard", "Ollie Parker", "Joanna Wellick", "Phillip Price"],
                       ["CEO at Allsafe Cyber security","Works at Allsafe Cyber security",
                         "Open to work","CEO at E Corp"],
                       [NetworkLinks.Gilbert,NetworkLinks.Ollie,NetworkLinks.Joanna,
                         NetworkLinks.Philip],
                         [NetworkLinks.bkg1,NetworkLinks.bkg2,NetworkLinks.bkg3,
                           NetworkLinks.bkg4],
                         ["2 Mutual Connections","1 Mutual Connection",
                           "1 Mutual Connection","9 Mutual Connections"],
                       "People you may know with similar roles"
                     ),
                      OtherProfiles(
                          ["Whiterose ", "Francis Shaw", "Fernando Vera", "Sunil Markesh"],
                          ["Chinese Minister of State Security","Freelancer",
                            "Digital Medicine Supplier","Works at FSociety"],
                          [NetworkLinks.White,NetworkLinks.Francis,NetworkLinks.Fernando,
                            NetworkLinks.Sunil],
                          [NetworkLinks.bkg1,NetworkLinks.bkg2,NetworkLinks.bkg3,
                            NetworkLinks.bkg4],
                          ["1 Mutual Connection","3 Mutual Connections",
                            "5 Mutual Connections","6 Mutual Connections"],
                          "Industry Leaders you may know"
                      ),
                      Events(),
                    ],
                  ),
        ),
      ),
    );
  }
}


