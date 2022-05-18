import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title area'),
      ),
      body: Text('여기에 데이터 뿌리면 되겠네'),
    );
  }
}
