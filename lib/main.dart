import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double oneSixth = MediaQuery.of(context).size.width / 6;

    return Scaffold(
      appBar: AppBar(
        title: Text("Table Border Example"),
      ),
      body: Column(
        children: [
          Table(
            border: TableBorder(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FractionColumnWidth(.075),
              1: FractionColumnWidth(.075),
              2: FractionColumnWidth(.375),
              3: FractionColumnWidth(.125),
              4: FractionColumnWidth(.150),
              5: FractionColumnWidth(.075),
              6: FractionColumnWidth(.125),
            },
            children: [
              TableRow(
                children: [
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "0",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "1",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "2",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "3",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "4",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "5",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    child: Text(
                      "6",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
