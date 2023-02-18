import 'package:dailisan_flutter/screens/dashboard.dart';
import 'package:dailisan_flutter/screens/profile.dart';
import 'package:dailisan_flutter/screens/setting.dart';
import 'package:dailisan_flutter/widgets/logincard.dart';
import 'package:flutter/material.dart';

// ignore: prefer_const_constructors

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Login(),
        '/Dashboard':(context) => MyDashboard(),
        '/Settings':(context) => MySettings(),
        '/Profile': (context) => MyProfile()
      },
    ));

  class Login extends StatelessWidget {
  const Login({super.key});

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
  return Scaffold(
   body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginCard(width: 400, height: 500, distance: 100,)
          ],
        ),
      )
      );
}

Scaffold mobileView (BuildContext context){
  return Scaffold(
    
    body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginCard(width: 300, height: 400, distance: 50,)
          ],
        ),
      )
  );
}

