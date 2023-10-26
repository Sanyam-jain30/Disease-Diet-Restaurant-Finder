import 'package:flutter/material.dart';

class Avoid extends StatefulWidget {
  const Avoid({Key? key, required this.disease}) : super(key: key);

  final String disease;
  @override
  State<Avoid> createState() => _AvoidState();
}

class _AvoidState extends State<Avoid> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.disease);
  }
}