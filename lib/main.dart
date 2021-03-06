import 'package:flutter/material.dart';

void main() {
  runApp(const SnackBarTest());
}

class SnackBarTest extends StatelessWidget {
  const SnackBarTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _messangerKey = GlobalKey<ScaffoldMessengerState>();
    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar_Test'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              _messangerKey.currentState.showSnackBar(
                SnackBar(content: Text('스낵바 vs 스낵면+찬밥')),
              );
            },
            child: Container(
              child: Text(
                'SnackBar Push',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),
              ),
              height: 40,
              width: 80,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
