import 'package:flutter/material.dart';

import '../drawer_navigation.dart';

class TrashPage extends StatelessWidget {
  const TrashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        title: const Text("Trash Page"),
      ),
      body: const Center(
        child: Text("This is Trash Page"),
      ),
      drawer: const DrawerNavigation(),
    );
  }
}
