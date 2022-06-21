import 'package:flutter/material.dart';

class Unconfirmed extends StatefulWidget {
  const Unconfirmed({Key? key}) : super(key: key);

  @override
  State<Unconfirmed> createState() => _UnconfirmedState();
}

class _UnconfirmedState extends State<Unconfirmed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('미확인 대원처리'),
    );
  }
}
