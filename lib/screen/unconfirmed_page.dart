import 'package:flutter/material.dart';

class Unconfirmed extends StatefulWidget {
  const Unconfirmed({Key? key}) : super(key: key);

  @override
  State<Unconfirmed> createState() => _UnconfirmedState();
}

class _UnconfirmedState extends State<Unconfirmed> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        selectDate();
      },
      child: Text('DatePicker'),
    );
  }

  void selectDate() {
    Future selectedDate = showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2023),
    );
  }
}
