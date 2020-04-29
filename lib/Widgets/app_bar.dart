import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          children: <Widget>[
            Text('SY',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Spacer(),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}
