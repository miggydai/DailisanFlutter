import 'package:dailisan_flutter/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
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
            child: Center(child: Text("Dashboard"),),
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
      child: Center(child: Text("dashboard"),),
    ),
  );
}