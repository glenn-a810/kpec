import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kpec/screen/qr_scanner.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, this.initialData}) : super(key: key);
  final initialData;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> menuTitle = <String>[
    '수기처리',
    '미확인 대원처리',
    '현장등록 대원',
    '출결현황'
  ];
  final List<IconData> menuIcon = <IconData>[
    Icons.drive_file_rename_outline,
    Icons.directions_run,
    Icons.person_pin,
    Icons.event_available
  ];
  int bottomIndex = 0; // 하단 네비게이션 인덱스

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    Future.delayed(Duration.zero, () {
      _showDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final code = Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => qrScanner()));

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        title: Text(
          '민방위 전자출결 관리',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              width: size.width * 0.85,
              height: size.height * 0.18,
              child: Card(
                margin: EdgeInsets.only(
                  top: size.height * 0.03,
                ),
                elevation: 4,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('루이 관리자님, 반갑습니다!'),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text('2022년 6월 8일 수요일'),
                      Text('오전 10시 00분 오전교육'),
                      Text('판교테크노밸리 민방위교육장'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    margin: EdgeInsets.only(
                        top: size.height * 0.03, right: size.width * 0.02),
                    elevation: 4,
                    child: IconButton(
                      icon: Icon(Icons.qr_code_scanner),
                      iconSize: size.width * 0.3,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => qrScanner()));
                      },
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                        top: size.height * 0.03, left: size.width * 0.02),
                    elevation: 4,
                    child: IconButton(
                      icon: Icon(Icons.qr_code_scanner),
                      iconSize: size.width * 0.3,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => qrScanner()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Card(
                margin: EdgeInsets.only(
                  top: size.height * 0.03,
                ),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('출결현황'),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // 여기는 데이터를 http로 받아와서 함수로 저장하고 for문 돌려야 할 것 같은데, 더미데이터로 테스트 했는데 잘 안되네 왜지..
                        children: [
                          Column(
                            children: [
                              Text('1839'),
                              Text('총원'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('1809'),
                              Text(
                                '입장',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('30'),
                              Text(
                                '미입장',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              Text('퇴장'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Card(
                margin: EdgeInsets.only(top: size.height * 0.03),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('퇴장코드 일괄처리'),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Center(
                        child: Text('일괄처리 코드를 생산하시려면 여기를 터치하세요.'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Card(
                margin: EdgeInsets.only(top: size.height * 0.03),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Row(
                    children: [
                      Icon(Icons.drive_file_rename_outline),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text('수기처리'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Card(
                margin: EdgeInsets.only(top: size.height * 0.03),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Row(
                    children: [
                      Icon(Icons.directions_run),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text('미확인 대원처리'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Card(
                margin: EdgeInsets.only(top: size.height * 0.03),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Row(
                    children: [
                      Icon(Icons.person_pin),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text('현장등록 대원'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              child: Card(
                margin: EdgeInsets.only(top: size.height * 0.03),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.04),
                  child: Row(
                    children: [
                      Icon(Icons.event_available),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text('출결현황'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      /////////////////////////////////////////////////////////////////////////////
      // Card(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(16.0),
      //   ),
      //   elevation: 4.0,
      //   child: IconButton(
      //     icon: Icon(Icons.qr_code_outlined),
      //     iconSize: 150,
      //     onPressed: () {
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (context) => qrScanner()));
      //     },
      //   ),
      // ),
      /////////////////////////////////////////////////////////////////////////////
      // Center(
      //   child: Column(
      //     children: [
      //       ElevatedButton(
      //         child: Text('QR 테스트'),
      //         onPressed: () {
      //           Navigator.of(context).push(
      //             MaterialPageRoute(
      //               builder: (context) => qrScanner(),
      //             ),
      //           );
      //         },
      //       ),
      //       Text('QR data : '),
      //       Text(widget.initialData),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '메인',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_file_rename_outline),
            label: '수기처리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: '미확인 대원처리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: '현장등록 대원',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: '출결현황',
          ),
        ],
        showUnselectedLabels: true,
        unselectedFontSize: 10.0,
        unselectedItemColor: Colors.black38,
        selectedFontSize: 10.0,
        selectedItemColor: Colors.black,
      ),
    );
  }
}

void _showDialog(context) {
  String initialData;

  var currentDate = DateTime.now();
  String dateConvertFormat =
      DateFormat('yyyy년 M월 d일 (E)', 'ko').format(currentDate);

  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: AlertDialog(
            title: Center(
              child: Text(
                '출결 설정',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$dateConvertFormat',
                  style: TextStyle(),
                ),
                ListTile(
                  leading: Icon(Icons.light_mode_outlined),
                  title: Text('오전교육'),
                  onTap: () async {
                    initialData = '오전교육';
                    // Navigator.pop(context);
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MainPage(initialData: initialData)));
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.wb_twilight_outlined),
                  title: Text('오후교육'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                // ListTile(
                //   leading: Icon(Icons.nightlight_round_outlined),
                //   title: Text('야간교육'),
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                // ),
              ],
            ),
          ),
        );
      });
}
