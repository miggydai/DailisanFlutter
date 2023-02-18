import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginCard extends StatelessWidget {

  final double width;
  final double height;
  final double distance;
   LoginCard(
      {Key? key, required this.width, required this.height, required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey ,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              foregroundImage: AssetImage("assets/addu-seal-colorized.png"),
            ),
            SizedBox(height: 10,),
            Text("Ateneo De Davao University"),
            Text("Community Center"),
            Text("Asset Management SYstem"),

            SizedBox(height: distance,),
            
            button(context, "Login with Google", FontAwesomeIcons.google),




SizedBox(
  height: 10,
),
button(context, "login as guest", FontAwesomeIcons.userAstronaut),

          ],
        ),
      ),
    );
  }
}


Container button (BuildContext context, String name, IconData icon) {
  return Container(
               decoration: BoxDecoration(gradient: LinearGradient(colors: [ Color.fromRGBO(215, 221, 241, 1),
              Color.fromARGB(255, 68, 79, 197)])),
              child: ElevatedButton(
  onPressed: () {
     Navigator.pushNamedAndRemoveUntil(
                  context, '/Dashboard', ModalRoute.withName('/'));
  },
   style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(name), 
      SizedBox(
        width: 5,
      ),
      Icon(
        icon,
        size: 24.0,
      ),
    ],
  ),
),
);
}