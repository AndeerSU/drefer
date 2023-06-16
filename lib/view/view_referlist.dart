import 'dart:ffi';

import 'package:drefer/view/view_referdetail.dart';
import 'package:flutter/material.dart';

class ReferList extends StatefulWidget{
  const ReferList({super.key});

  @override
  State<StatefulWidget> createState() => _ReferList();

}

class _ReferList extends State<ReferList> {
  List<int> referlist = [2,3,1,2,3,2,1,2];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: false,
        itemCount: referlist.length,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.local_hospital_rounded),
              title: Text('Radiología'),
              subtitle: Text('hey'),
              trailing: Text('Faltan 3 dias'),
              tileColor: Colors.lightBlue[50],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReferDetail()),
                );
              }
            ),
          );
        }
    );
  }
}