import 'package:flutter/material.dart';
import 'package:tap_bar_real_tapbar001/pages/home_page.dart';
import 'package:tap_bar_real_tapbar001/pages/list_Page.dart';
import 'package:tap_bar_real_tapbar001/pages/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'HomePage'),
    Tab(text: 'List'),
    Tab(text: 'Test')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('丁丁Easy易記單詞99'),
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: <Widget>[HomePage(), List_Page(), Test_Page()],
          ),
        ),
      ),
    );
  }
}
