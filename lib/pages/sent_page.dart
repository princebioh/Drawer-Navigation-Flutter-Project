import 'package:flutter/material.dart';

import '../drawer_navigation.dart';

class SentPage extends StatelessWidget {
  const SentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green[200],
        title: const Text("Sent Page"),
      ),
      body: const Center(
        child: Text("This is Sent Page"),
      ),
      drawer: const DrawerNavigation(),
    );
  }
}