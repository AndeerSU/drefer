import 'package:flutter/material.dart';

class ReferQr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D.Refer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 275,
              height: 275,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/qr_example.png'),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ],
        ),
      ),
    );
  }

}