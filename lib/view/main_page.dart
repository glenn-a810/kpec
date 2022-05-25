import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('민방위 교육 출결 관리'),
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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 행의 수
            childAspectRatio: 1.5, // 카드 높이
          ),
          itemCount: 8, // 총 카드 수
          itemBuilder: (context, idx) {
            return Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.blue,
              child: Text('텍스트 위치'),
            );
          }),
      // ElevatedButton(
      //   child: Text('팝업 테스트'),
      //   onPressed: () {
      //     _showDialog(context);
      //   },
      // ),
    );
  }
}

void _showDialog(context) {
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
                // Text('$dateConvertFormat'),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
                  child: Text(
                    '$dateConvertFormat',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.light_mode_outlined),
                  title: Text('오전교육'),
                  onTap: () {
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
                ListTile(
                  leading: Icon(Icons.nightlight_round_outlined),
                  title: Text('야간교육'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
}
