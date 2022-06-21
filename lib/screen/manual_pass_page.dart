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
                width: size.width * 0.9,
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: '대원 이름을 입력하세요',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black54,
                      size: 30,
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        Icons.cancel,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                      onTap: () => _textEditingController.clear(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
