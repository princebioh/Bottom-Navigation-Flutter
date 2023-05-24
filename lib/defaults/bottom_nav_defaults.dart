import 'package:flutter/material.dart';

class BottomNavDefaults {
  static final Color itemColor = Colors.blueGrey!;
  static final Color itemSelectedColor = Colors.blue[700]!;

  static final navItems = [
    "Inbox",
    "Starred",
    "Sent",
    "Drafts",
    "Trash",
  ];

  static final navIcons = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.drafts,
    Icons.delete,
  ];
}
