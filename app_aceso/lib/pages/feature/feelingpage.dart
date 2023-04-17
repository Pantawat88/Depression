import 'package:flutter/material.dart';

class FeelingPage extends StatefulWidget {
  const FeelingPage({super.key});

  @override
  State<FeelingPage> createState() => _FeelingPageState();
}

class _FeelingPageState extends State<FeelingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: const Text("feel bad"),
      )),
    );
  }
}
