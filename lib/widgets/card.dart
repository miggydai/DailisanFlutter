import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .5 ,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/iphone-transparent.png"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            SizedBox(
              height: 5,
            ),
             Padding(
               padding: const EdgeInsets.only(right:150.0, bottom: 8),
               child: Text(
                  "iphone", textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)
                ),
             ),

            Padding(
              padding: const EdgeInsets.only(right:100.0),
              child: ElevatedButton.icon(onPressed: () {}, icon: Icon(FontAwesomeIcons.cartShopping, size: 15,), label: Text("add to cart", style: TextStyle(fontWeight: FontWeight.w500 ),), style: ElevatedButton.styleFrom(primary: Color.fromRGBO(107, 137, 232, 1)),),
            )
          ],
        ),
    );
  }
}