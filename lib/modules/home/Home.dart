import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: const Icon(
            Icons.icecream_sharp,
            color: Colors.white,
          ),
          title: const Text(
            "First App",
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
