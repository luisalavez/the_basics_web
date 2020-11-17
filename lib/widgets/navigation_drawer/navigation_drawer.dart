import 'package:flutter/material.dart';
import 'package:the_basics_web/routing/route_names.dart';
import 'package:the_basics_web/widgets/navbar_item/navbar_item.dart';
import 'package:the_basics_web/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          NavBarItem(
            'Episodes',
            EpisodesRoute,
            icon: Icons.videocam,
          ),
          NavBarItem(
            'About',
            AboutRoute,
            icon: Icons.help,
          ),
        ],
      ),
    );
  }
}
