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
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: TextField(
                        controller: dateInput,
                        decoration: InputDecoration(
                          hintText: '처리할 날짜를 입력해 주세요',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
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
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    SizedBox(
                      width: size.width * 0.17,
                      height: size.height * 0.047,
                      child: ElevatedButton(
                        child: Text('검색'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: size.width * 0.9,
                //   child: TextField(
                //     controller: dateInput,
                //     decoration: InputDecoration(
                //       hintText: '처리할 날짜를 입력해 주세요',
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.all(
                //           Radius.circular(10.0),
                //         ),
                //       ),
                //       enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.black26,
                //           width: 2.0,
                //         ),
                //         borderRadius: BorderRadius.all(
                //           Radius.circular(10.0),
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.black38,
                //           width: 3.0,
                //         ),
                //         borderRadius: BorderRadius.all(
                //           Radius.circular(10.0),
                //         ),
                //       ),
                //       prefixIcon: Icon(
                //         Icons.calendar_today,
                //         color: Colors.black38,
                //       ),
                //     ),
                //     readOnly: true,
                //     onTap: () async {
                //       DateTime _setDate = await showDatePicker(
                //         context: context,
                //         initialDate: DateTime.now(),
                //         firstDate: DateTime(2022),
                //         lastDate: DateTime(2023),
                //       ) as DateTime;
                //
                //       if (_setDate != null) {
                //         String formattedDate =
                //             DateFormat('yyyy년 MM월 dd일 E요일 a', 'ko_KR')
                //                 .format(_setDate);
                //
                //         setState(() {
                //           dateInput.text = formattedDate;
                //         });
                //       } else {
                //         dateInput.text = '날짜를 입력해 주세요';
                //       }
                //     },
                //   ),
                // ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Icon(Icons.person),
                      title: Text('유관우 ( 010-1234-1234 )'),
                      textColor: Colors.black87,
                      iconColor: Colors.black87,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('1990-01-01'),
                              subtitle: Text('북가좌2동'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('입장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF325DA5),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('퇴장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFFDA1317),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Icon(Icons.person),
                      title: Text('유관우 ( 010-1234-1234 )'),
                      textColor: Colors.black87,
                      iconColor: Colors.black87,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('1990-01-01'),
                              subtitle: Text('북가좌2동'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('입장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF325DA5),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('퇴장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFFDA1317),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Icon(Icons.person),
                      title: Text('유관우 ( 010-1234-1234 )'),
                      textColor: Colors.black87,
                      iconColor: Colors.black87,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('1990-01-01'),
                              subtitle: Text('북가좌2동'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('입장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF325DA5),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('퇴장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFFDA1317),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     ListTile(
                    //       title: Text('유관우 / 010-1234-1234'),
                    //       subtitle: Text('1990-01-01 / 북가좌2동'),
                    //     ),
                    //     ButtonBar(
                    //       children: [
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('입장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.green,
                    //           ),
                    //         ),
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('퇴장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.redAccent,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Icon(Icons.person),
                      title: Text('유관우 / 010-1234-1234'),
                      textColor: Colors.black87,
                      iconColor: Colors.black87,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('1990-01-01'),
                              subtitle: Text('북가좌2동'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('입장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF325DA5),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('퇴장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFFDA1317),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     ListTile(
                    //       title: Text('유관우 / 010-1234-1234'),
                    //       subtitle: Text('1990-01-01 / 북가좌2동'),
                    //     ),
                    //     ButtonBar(
                    //       children: [
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('입장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.green,
                    //           ),
                    //         ),
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('퇴장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.redAccent,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Icon(Icons.person),
                      title: Text('유관우 / 010-1234-1234'),
                      textColor: Colors.black87,
                      iconColor: Colors.black87,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('1990-01-01'),
                              subtitle: Text('북가좌2동'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('입장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF325DA5),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('퇴장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFFDA1317),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     ListTile(
                    //       title: Text('유관우 / 010-1234-1234'),
                    //       subtitle: Text('1990-01-01 / 북가좌2동'),
                    //     ),
                    //     ButtonBar(
                    //       children: [
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('입장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.green,
                    //           ),
                    //         ),
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('퇴장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.redAccent,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ExpansionTile(
                      leading: Icon(Icons.person),
                      title: Text('유관우 / 010-1234-1234'),
                      textColor: Colors.black87,
                      iconColor: Colors.black87,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text('1990-01-01'),
                              subtitle: Text('북가좌2동'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('입장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF325DA5),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('퇴장'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFFDA1317),
                                      fixedSize: Size(size.width * 0.42, 30)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     ListTile(
                    //       title: Text('유관우 / 010-1234-1234'),
                    //       subtitle: Text('1990-01-01 / 북가좌2동'),
                    //     ),
                    //     ButtonBar(
                    //       children: [
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('입장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.green,
                    //           ),
                    //         ),
                    //         TextButton(
                    //           onPressed: () {},
                    //           child: Text('퇴장'),
                    //           style: TextButton.styleFrom(
                    //             primary: Colors.white,
                    //             backgroundColor: Colors.redAccent,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
              ],
            ),
          ),
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
