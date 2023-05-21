import 'package:flutter/material.dart';

class DrawerItems {
  static final Color drawerItemColor = Colors.blueGrey;
  static final Color drawerItemSelectedColor = Colors.blue.shade900;
  static final Color selectedTileColor = Colors.cyan.shade100;
  static final Color tileColor = Colors.white;

  static final drawerItemText = [
    "Inbox",
    "Starred",
    "Sent",
    "Drafts",
    "Trash",
    "Spam",
  ];

  static final drawerItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
