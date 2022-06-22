import 'package:flutter/material.dart';

class ManualPass extends StatefulWidget {
  const ManualPass({Key? key}) : super(key: key);

  @override
  State<ManualPass> createState() => _ManualPassState();
}

class _ManualPassState extends State<ManualPass> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                width: size.width * 0.9,
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: '대원 이름이나 휴대폰 번호를 입력하세요',
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
                      Icons.search,
                      color: Colors.black38,
                      size: 30,
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        Icons.cancel,
                        color: Colors.black38,
                        // size: 25,
                      ),
                      onTap: () => _textEditingController.clear(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // Card List
              // SizedBox(
              //   width: size.width * 0.9,
              //   child: Card(
              //     elevation: 4,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10.0),
              //       ),
              //     ),
              //     child: Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         ListTile(
              //           leading: Icon(
              //             Icons.person,
              //             size: 40,
              //             color: Colors.green,
              //           ),
              //           title: Text(
              //             '유관우',
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           subtitle: Text('1990-01-01 / 북가좌2동 / 010-1234-1234'),
              //         ),
              //         // Row(
              //         //   mainAxisAlignment: MainAxisAlignment.end,
              //         //   children: [
              //         //     ElevatedButton(
              //         //       style: ElevatedButton.styleFrom(
              //         //         primary: Colors.green,
              //         //       ),
              //         //       child: Text('입장'),
              //         //       onPressed: () {},
              //         //     ),
              //         //     ElevatedButton(
              //         //       style: ElevatedButton.styleFrom(
              //         //         primary: Colors.redAccent,
              //         //       ),
              //         //       child: Text('퇴장'),
              //         //       onPressed: () {},
              //         //     ),
              //         //   ],
              //         // ),
              //         ButtonBar(
              //           children: [
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text('입장'),
              //               style: ElevatedButton.styleFrom(
              //                 primary: Colors.green,
              //               ),
              //             ),
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text('퇴장'),
              //               style: ElevatedButton.styleFrom(
              //                 primary: Colors.redAccent,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: size.width * 0.9,
              //   child: Card(
              //     elevation: 4,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10.0),
              //       ),
              //     ),
              //     child: Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         ListTile(
              //           leading: Icon(
              //             Icons.person,
              //             size: 40,
              //             color: Colors.redAccent,
              //           ),
              //           title: Text(
              //             '유관우',
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           subtitle: Text('1990-01-01 / 북가좌2동 / 010-1234-1234'),
              //         ),
              //         // Row(
              //         //   mainAxisAlignment: MainAxisAlignment.end,
              //         //   children: [
              //         //     ElevatedButton(
              //         //       style: ElevatedButton.styleFrom(
              //         //         primary: Colors.green,
              //         //       ),
              //         //       child: Text('입장'),
              //         //       onPressed: () {},
              //         //     ),
              //         //     ElevatedButton(
              //         //       style: ElevatedButton.styleFrom(
              //         //         primary: Colors.redAccent,
              //         //       ),
              //         //       child: Text('퇴장'),
              //         //       onPressed: () {},
              //         //     ),
              //         //   ],
              //         // ),
              //         ButtonBar(
              //           children: [
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text('입장'),
              //               style: ElevatedButton.styleFrom(
              //                 primary: Colors.green,
              //               ),
              //             ),
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text('퇴장'),
              //               style: ElevatedButton.styleFrom(
              //                 primary: Colors.redAccent,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: size.width * 0.9,
              //   child: Card(
              //     elevation: 4,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(10.0),
              //       ),
              //     ),
              //     child: Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         ListTile(
              //           leading: Icon(
              //             Icons.person,
              //             size: 40,
              //             color: Colors.black38,
              //           ),
              //           title: Text(
              //             '유관우',
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           subtitle: Text('1990-01-01 / 북가좌2동 / 010-1234-1234'),
              //         ),
              //         // Row(
              //         //   mainAxisAlignment: MainAxisAlignment.end,
              //         //   children: [
              //         //     ElevatedButton(
              //         //       style: ElevatedButton.styleFrom(
              //         //         primary: Colors.green,
              //         //       ),
              //         //       child: Text('입장'),
              //         //       onPressed: () {},
              //         //     ),
              //         //     ElevatedButton(
              //         //       style: ElevatedButton.styleFrom(
              //         //         primary: Colors.redAccent,
              //         //       ),
              //         //       child: Text('퇴장'),
              //         //       onPressed: () {},
              //         //     ),
              //         //   ],
              //         // ),
              //         ButtonBar(
              //           children: [
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text('입장'),
              //               style: ElevatedButton.styleFrom(
              //                 primary: Colors.green,
              //               ),
              //             ),
              //             ElevatedButton(
              //               onPressed: () {},
              //               child: Text('퇴장'),
              //               style: ElevatedButton.styleFrom(
              //                 primary: Colors.redAccent,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // ExpansionTile
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
    );
  }
}
