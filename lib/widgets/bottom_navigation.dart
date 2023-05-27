import 'package:bottom_navigation/pages/drafts_page.dart';
import 'package:bottom_navigation/pages/sent_page.dart';
import 'package:bottom_navigation/pages/starred_page.dart';
import 'package:bottom_navigation/pages/trash_page.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation/defaults/bottom_nav_defaults.dart';
import 'package:bottom_navigation/pages/inbox_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var indexClicked = 0;
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
        currentIndex: indexClicked,
        elevation: 30,
        backgroundColor: Colors.cyanAccent,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.green,
        onTap: (value) => changePage(context, value),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple[100],
            icon: Icon(
              BottomNavDefaults.navIcons[0],
            ),
            label: BottomNavDefaults.navItems[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepOrange[100],
            icon: Icon(
              BottomNavDefaults.navIcons[1],
            ),
            label: BottomNavDefaults.navItems[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              BottomNavDefaults.navIcons[2],
            ),
            label: BottomNavDefaults.navItems[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              BottomNavDefaults.navIcons[3],
            ),
            label: BottomNavDefaults.navItems[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              BottomNavDefaults.navIcons[4],
            ),
            label: BottomNavDefaults.navItems[4],
          ),
        ]);
  }
}

void changePage(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const InboxPage()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const StarredPage()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SentPage()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const DraftsPage()));
      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const TrashPage()));
      break;
    default:
      Navigator.of(context).pop();
  }
}
