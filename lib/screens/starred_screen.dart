import 'package:flutter/material.dart';

class StarredScreen extends StatelessWidget {
  const StarredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StarHomePage(),
    );
  }
}

class StarHomePage extends StatefulWidget {
  const StarHomePage({super.key});

  @override
  State<StarHomePage> createState() => _StarHomePageState();
}

class _StarHomePageState extends State<StarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starred Messages"),
      ),
      body: const Center(
        child: Text("Starred Messages"),
      ),
    );
  }
}
