import 'package:flutter/material.dart';

class FieldPass extends StatefulWidget {
  const FieldPass({Key? key}) : super(key: key);

  @override
  State<FieldPass> createState() => _FieldPassState();
}

class _FieldPassState extends State<FieldPass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('현장등록대원'),
    );
  }
}
