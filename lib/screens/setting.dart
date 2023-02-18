import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/card.dart';
import '../widgets/sidebar.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: LayoutBuilder(builder: (BuildContext, BoxConstraints constraints) {
                if (constraints.maxWidth > 600) {
                  return WebView(context);
                } else {
                  return mobileView(context);
                }
              })
    );
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
            child: Center(child: Container(width: 300, height: 400, child: MyCard(),),),
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
       child: Center(child: Container(width: 300, height: 400, child: MyCard(),),),
    ),
  );
}