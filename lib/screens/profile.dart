import 'package:dailisan_flutter/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/sidebar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: LayoutBuilder(builder: (BuildContext, BoxConstraints constraints) {
                if (constraints.maxWidth > 600) {
                  return WebView(context);
                } else {
                  return mobileView(context);
                }
              }));
  }
}

Scaffold WebView(BuildContext context){
  return Scaffold(body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Stack(
          children: [
            Container(child: sidebar(),),
            Container(width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(child: Text("Profile"),),
            )

          ],
        ),
      )
      );
}

Scaffold mobileView (BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
    ),
    drawer: sidebar(),
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(child: Text("Profile"),),
    ),
  );
}