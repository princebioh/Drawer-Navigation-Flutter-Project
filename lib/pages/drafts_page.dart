import 'package:drawer_navig/drawer_navigation.dart';
import 'package:flutter/material.dart';

class DraftsPage extends StatelessWidget {
  const DraftsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text("Drafts Page"),
      ),
      body: const Center(
        child: Text("This is Drafts Page"),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
