import 'package:flutter/material.dart';

class ManualPass extends StatefulWidget {
  const ManualPass({Key? key}) : super(key: key);

  @override
  State<ManualPass> createState() => _ManualPassState();
}

class _ManualPassState extends State<ManualPass> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        title: Text('수기처리'),
      ),
    );
  }
}
