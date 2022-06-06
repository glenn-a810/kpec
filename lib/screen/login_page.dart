import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/cmes.png',
              width: size.width * 0.6,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                labelText: '관리자 아이디',
                prefixIcon: Icon(Icons.account_circle_outlined),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                labelText: '관리자 비밀번호',
                prefixIcon: Icon(Icons.lock_outline_rounded),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/main');
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              child: Text('로그인'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  fixedSize: Size(size.width * 0.7, size.height * 0.05)),
            ),
          ),
        ],
      ),
    );
  }
}
