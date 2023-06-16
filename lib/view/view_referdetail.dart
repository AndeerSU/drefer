import 'package:drefer/view/view_referlocation.dart';
import 'package:drefer/view/view_referqr.dart';
import 'package:flutter/material.dart';

class ReferDetail extends StatelessWidget {
  const ReferDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D.Refer'),
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code_2_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReferQr()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.location_pin),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReferLocation()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          children: [
            Card(child: Row(
              children: [
                Text('data'),
              ],
            )),
            Card(child: Text('data')),
            Card(child: Text('data')),
            Card(child: Text('data')),
            Card(child: Text('data')),
            Card(child: Text('data')),
          ],
        ),
      ),
    );
  }

}