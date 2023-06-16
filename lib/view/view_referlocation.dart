import 'package:flutter/material.dart';

class ReferLocation extends StatelessWidget {
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
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/maps_example.png'),
                    fit: BoxFit.fill
                ),
                shape: BoxShape.rectangle,
              ),
            )
          ],
        ),
      ),
    );
  }

}