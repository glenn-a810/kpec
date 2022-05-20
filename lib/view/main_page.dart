import 'dart:js';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: ElevatedButton(
          child: Text('하단 메뉴 테스트'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Icon(Icons.access_time),
                        title: Text('오전반'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.access_time),
                        title: Text('오후반'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.nightlight_round),
                        title: Text('야간교육'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

void _showDialog() {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('교육시간 선택'),
          content: Text('오전/오후/야간'),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: Text('닫기'),
            )
          ],
        );
      });
}
