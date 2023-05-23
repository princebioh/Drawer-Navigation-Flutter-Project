import 'package:flutter/material.dart';
import 'defaults/drawer_items.dart';
import 'pages/drafts_page.dart';
import 'pages/inbox_page.dart';
import 'pages/sent_page.dart';
import 'pages/spam_page.dart';
import 'pages/starred_page.dart';
import 'pages/trash_page.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurpleAccent[100],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.only(left: 10),
            margin: EdgeInsets.zero,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/UserProfile.jpg"),
                  radius: 60,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Prince Bioh",
                      style: TextStyle(
                          fontSize: 25,
                          // fontFamily: "Verdana",
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "princebioh15@gmail.com",
                      style: TextStyle(
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          // fontFamily: "Verdana",
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Divider(
          //   thickness: 0,
          //   height: 15,
          //   color: Color.fromARGB(255, 23, 0, 193),
          //   indent: 10,
          //   endIndent: 10,
          // ),
          const SizedBox(
            height: 15,
          ),
          const DrawerItemTile(
            index: 0,
          ),
          const SizedBox(
            height: 15,
          ),
          const DrawerItemTile(
            index: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          const DrawerItemTile(
            index: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          const DrawerItemTile(
            index: 3,
          ),
          const SizedBox(
            height: 15,
          ),
          const DrawerItemTile(
            index: 4,
          ),
          const SizedBox(
            height: 15,
          ),
          const DrawerItemTile(
            index: 5,
          ),
        ],
      ),
    );
  }
}

class DrawerItemTile extends StatelessWidget {
  const DrawerItemTile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        DrawerItems.drawerItemIcon[index],
        size: 35,
        color: Colors.black87,
      ),
      title: Text(
        DrawerItems.drawerItemText[index],
        style: const TextStyle(
          fontSize: 22,
          fontFamily: "Verdana",
          color: Colors.black,
        ),
      ),
      onTap: () => onClick(context, index),
    );
  }
}

void onClick(BuildContext context, int index) {
  Navigator.pop(context);
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
    case 5:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SpamPage()));
      break;

    default:
      Navigator.pop(context);
      break;
  }
}
