import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kpec/view/qr_scanner.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, this.initialData}) : super(key: key);
  final initialData;

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
    // final code = Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => qrScanner()));

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
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('QR 테스트'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => qrScanner(),
                  ),
                );
              },
            ),
            Text('QR data : '),
            Text(widget.initialData),
          ],
        ),
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
