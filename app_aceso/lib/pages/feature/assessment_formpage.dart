import 'package:flutter/material.dart';

class AssessmentForm extends StatefulWidget {
  const AssessmentForm({super.key});

  @override
  State<AssessmentForm> createState() => _AssessmentFormState();
}

class _AssessmentFormState extends State<AssessmentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: const Text("data"),
      )),
    );
  }
}
