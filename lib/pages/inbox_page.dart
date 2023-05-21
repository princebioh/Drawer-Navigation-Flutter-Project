import 'package:flutter/material.dart';

import '../drawer_navigation.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.deepPurple[200],
        title: const Text("Inbox Page"),
      ),
      body: const Center(
        child: Text("This is Inbox Page"),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
