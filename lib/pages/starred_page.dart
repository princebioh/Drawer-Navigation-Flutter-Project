import 'package:flutter/material.dart';

import '../drawer_navigation.dart';

class StarredPage extends StatelessWidget {
  const StarredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        title: const Text("Starred Page"),
      ),
      body: const Center(
        child: Text("This is Starred Page"),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
