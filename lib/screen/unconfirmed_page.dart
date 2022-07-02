import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Unconfirmed extends StatefulWidget {
  const Unconfirmed({Key? key}) : super(key: key);

  @override
  State<Unconfirmed> createState() => _UnconfirmedState();
}

class _UnconfirmedState extends State<Unconfirmed> {
  // DateTime _setDate = DateTime.now();
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            width: size.width * 0.9,
            child: TextField(
              controller: dateInput,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black26,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black38,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.calendar_today,
                  color: Colors.black38,
                ),
              ),
              readOnly: true,
              onTap: () async {
                DateTime _setDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2023),
                ) as DateTime;

                if (_setDate != null) {
                  String formattedDate =
                      DateFormat('yyyy년 MM월 dd일 E요일 a', 'ko_KR')
                          .format(_setDate);

                  setState(() {
                    dateInput.text = formattedDate;
                  });
                } else {
                  dateInput.text = '날짜를 입력해 주세요';
                }
              },
            ),
          ),
        ],
      ),
      // child: Column(
      //   children: [
      //     SizedBox(
      //       height: size.height * 0.03,
      //     ),
      //     TextButton(
      //       onPressed: () {
      //         // selectDate();
      //         Future selectedDate = showDatePicker(
      //           context: context,
      //           initialDate: DateTime.now(),
      //           firstDate: DateTime(2022), // 출결 계약년도
      //           lastDate:
      //               DateTime(2023), // 출결 계약종료 년도 (계약종료 시 해가 넘어가는 경우를 위해 +1년)
      //         );
      //
      //         selectedDate.then((dateString) {
      //           setState(() {
      //             _setDate = dateString;
      //           });
      //         });
      //       },
      //       child: Column(
      //         children: [
      //           Text('DatePicker'),
      //           // Text('$_setDate'),
      //         ],
      //       ),
      //     ),
      //     SizedBox(
      //       width: size.width * 0.9,
      //       child: Text('$_setDate'),
      //     )
      //   ],
      // ),
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
