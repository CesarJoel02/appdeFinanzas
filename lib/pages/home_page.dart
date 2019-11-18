import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  SummaryPage({Key key}) : super(key: key);

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Text('Summary'),
       ),
    );
  }
}