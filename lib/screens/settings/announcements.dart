// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class AnnounceInfo {
  //--- Name Of Event
  final String name;
  //--- data
  final String date;

  AnnounceInfo({required this.name, required this.date});

  static List<AnnounceInfo> allAnnounce() {
    // ignore: deprecated_member_use
    var lstOfAnnounce = <AnnounceInfo>[];

    lstOfAnnounce.add(AnnounceInfo(name: "할인 행사", date: "8.29"));
    lstOfAnnounce.add(AnnounceInfo(name: "공짜 쿠폰", date: "5.29"));
    lstOfAnnounce.add(AnnounceInfo(name: "뮤지컬 티켓", date: "3.18"));
    return lstOfAnnounce;
  }
}

class Announcements extends StatelessWidget {
  final List<AnnounceInfo> _allAnnounce = AnnounceInfo.allAnnounce();

  Announcements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: getHomePageBody(context),
    ));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allAnnounce.length,
      itemBuilder: _getItemUI,
      padding: const EdgeInsets.all(0.0),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
        child: new Column(
      children: <Widget>[
        new ListTile(
          title: new Text(
            _allAnnounce[index].name,
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_allAnnounce[index].date,
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal)),
              ]),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const announcementInfo(),
              ),
            );
          },
        )
      ],
    ));
  }
}

// ignore: camel_case_types
class announcementInfo extends StatelessWidget {
  const announcementInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("공지 사항"),
      ), //AppBar
      body: ReadTextFile(),
    ); //scaffold
  }
}

class ReadTextFile extends StatefulWidget {
  const ReadTextFile({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReadTextFileState createState() => _ReadTextFileState();
}

class _ReadTextFileState extends State<ReadTextFile> {
  String dataFromFile = "";

  Future<void> readText() async {
    final String response = await rootBundle.loadString('announce.txt');
    setState(() {
      dataFromFile = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    readText();
    return Container(
      child: Text(dataFromFile),
    );
  }
}
