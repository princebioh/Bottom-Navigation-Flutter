import 'package:flutter/material.dart';



class SpamPage extends StatelessWidget {
  const SpamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.red[200],
        title: const Text("Spam Page"),
      ),
      body: const Center(
        child: Text("This is Spam Page"),
      ),

    );
  }
}