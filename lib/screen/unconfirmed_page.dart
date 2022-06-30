import 'package:flutter/material.dart';

class Unconfirmed extends StatefulWidget {
  const Unconfirmed({Key? key}) : super(key: key);

  @override
  State<Unconfirmed> createState() => _UnconfirmedState();
}

class _UnconfirmedState extends State<Unconfirmed> {
  DateTime _setDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          TextButton(
            onPressed: () {
              // selectDate();
              Future selectedDate = showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2022),
                lastDate: DateTime(2023),
              );

              selectedDate.then((dateString) {
                setState(() {
                  _setDate = dateString;
                });
              });
            },
            child: Column(
              children: [
                Text('DatePicker'),
                // Text('$_setDate'),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.9,
            child: Text('$_setDate'),
          )
        ],
      ),
    );
  }

  // void selectDate() {
  //   Future selectedDate = showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime(2023),
  //   );
  // }
}
