import 'package:flutter/material.dart';
import 'screens/drafts_screen.dart';
import 'screens/inbox_screen.dart';
import 'screens/sent_screen.dart';
import 'screens/spam_screen.dart';
import 'screens/starred_screen.dart';
import 'screens/trash_screen.dart';
import 'defaults/defaults.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  var indexClicked = [0, 1, 2, 3, 4, 5];
  final screens = [
    InboxScreen(),
    StarredScreen(),
    SentScreen(),
    DraftsScreen(),
    TrashScreen(),
    SpamScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Navigation Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/drawer.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage('assets/images/UserProfile.jpg'),
                  ),
                  Text(
                    "Prince Bioh",
                    style: TextStyle(
                        fontFamily: "Verdana",
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Defaults.drawerItemIcon[index],
                      color: isSelected
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                      size: 30,
                    ),
                    title: Text(
                      Defaults.drawerItemText[index],
                      style: TextStyle(
                          fontSize: 20, color: Defaults.drawerItemColor),
                    ),
                    // selected: isSelected,
                    // selectedColor: Defaults.drawerItemSelectedColor,
                    onTap: () {
                      setState(() {
                        isSelected = true;
                      });
                    },
                  );
                },
                itemCount: screens.length,
                padding: const EdgeInsets.all(0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
