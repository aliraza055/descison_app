import 'package:flutter/material.dart';

class AddDecision extends StatefulWidget {
  const AddDecision({super.key});

  @override
  State<AddDecision> createState() => _AddDecisionState();
}

class _AddDecisionState extends State<AddDecision> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,),
    );
  }
}