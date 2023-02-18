import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidebarx/sidebarx.dart';

class sidebar extends StatelessWidget {
  const sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SidebarX(
    controller: SidebarXController(selectedIndex: 3, extended: true),
    theme: const SidebarXTheme(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(215, 221, 241, 1),
              Color.fromARGB(255, 68, 79, 197)
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
          ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      iconTheme: IconThemeData(color: Colors.white),
      selectedTextStyle: TextStyle(color: Colors.white),
    ),
    extendedTheme: const SidebarXTheme(width: 250),
    footerDivider: Divider(color: Colors.white.withOpacity(0.8), height: 1),
    headerBuilder: (context, extended) {
      return const SizedBox(
        height: 100,
        child: Icon(
          FontAwesomeIcons.airbnb,
          size: 60,
          color: Colors.white,
        ),
      );
    },
    items: [
      SidebarXItem(
        icon: Icons.home,
        label: ' Dashboard',
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
              context, "/Dashboard", ModalRoute.withName('/'));
          ;
        },
      ),
      SidebarXItem(icon: Icons.settings, label: ' Setting', onTap: () {
        Navigator.pushNamedAndRemoveUntil(
              context, "/Settings", ModalRoute.withName('/'));
          ;
      },),
      SidebarXItem(icon: Icons.person, label: ' Profile', onTap: () {
         Navigator.pushNamedAndRemoveUntil(
              context, "/Profile", ModalRoute.withName('/'));
          ;
      },)
    ],
  );;
  }
}