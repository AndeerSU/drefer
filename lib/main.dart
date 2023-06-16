import 'package:drefer/view/view_referlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.yellow[50]
      ),
      home: const MyHomePage(title: 'D.Refer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = <String>['Euskara', 'Gaztelera'];
  Icon langIcon = Icon(Icons.language_rounded);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
                PopupMenuButton(
                    icon: langIcon,
                    itemBuilder: (context) => [
                      PopupMenuItem<MenuItem>(
                          value: MenuItem.item1,
                          child: ListTile(
                              leading: Icon(Icons.flag_rounded),
                              title: Text('Euskara')
                          ),
                      ),
                      PopupMenuItem<MenuItem>(
                        value: MenuItem.item2,
                        child: ListTile(
                            leading: Icon(Icons.flag_circle_rounded),
                            title: Text('Gaztelera')
                        ),
                      )
                    ],
                  onSelected: (newValue) {
                      if (newValue == MenuItem.item1) {
                        setState(() {
                          langIcon = Icon(Icons.flag_rounded);
                        });
                      }
                      if (newValue == MenuItem.item2) {
                        setState(() {
                          langIcon = Icon(Icons.flag_circle_rounded);
                        });
                      }
                      },
                )
          ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(height: 20,),
              Expanded(child: ReferList()),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}

enum MenuItem {
  item1,
  item2
}
