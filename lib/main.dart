import 'dart:js';

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
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter App"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Card(
              context: context,
              color: Colors.green,
              stuid: "Student-ID 633410088-5",
              name: "Atid Utagang",
              nickname: "TAN",
              pic: "assets/images/tan.jpg"),
          Card(
              context: context,
              color: Colors.blue,
              stuid: "Student-ID 633410010-2",
              name: "Chinpakorn Waiyawut",
              nickname: "CHIN",
              pic: "assets/images/chin.jpg"),
          Card(
              context: context,
              color: Colors.red,
              stuid: "Student-ID 633410011-0",
              name: "Chinnawat Khongcha",
              nickname: "POND",
              pic: "assets/images/pond.jpg"),
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String name,
      required String nickname,
      required String pic,
      required String stuid}) {
    return Container(
      width: 400,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: name,
                        nickname: nickname,
                        pic: pic,
                        stuid: stuid,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              pic,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: color,
                child: Center(child: Text(name))),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.nickname,
      required this.pic,
      required this.stuid});
  String name;
  String nickname;
  String pic;
  String stuid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter App"),
      ),
      body: Column(children: [Text(stuid), Text(name), Text(nickname)]),
    );
  }
}
