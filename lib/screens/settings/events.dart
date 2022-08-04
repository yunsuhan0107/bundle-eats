// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class EventInfo {
  //--- Name Of Event
  final String name;
  //-- image
  final String image;
  //--- duration
  final String duration;

  EventInfo({required this.name, required this.duration, required this.image});

  static List<EventInfo> allEvents() {
    // ignore: deprecated_member_use
    var lstOfEvents = <EventInfo>[];

    lstOfEvents.add(
        EventInfo(name: "할인 행사", duration: "8.29~10.31", image: "event1.png"));
    lstOfEvents.add(
        EventInfo(name: "공짜 쿠폰", duration: "5.29~11.01", image: "event2.png"));
    lstOfEvents.add(
        EventInfo(name: "뮤지컬 티켓", duration: "6.29~12.31", image: "event3.png"));
    return lstOfEvents;
  }
}

class Events extends StatelessWidget {
  final List<EventInfo> _allEvents = EventInfo.allEvents();

  Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allEvents.length,
      itemBuilder: _getItemUI,
      padding: const EdgeInsets.all(0.0),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
        child: InkWell(
      child: SizedBox(
        width: double.infinity,
        height: 250,
        child: GridTile(
          // ignore: sort_child_properties_last
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage(_allEvents[index].image),
            fit: BoxFit.cover,
          ))),
          footer: Container(
            // You can use GridTileBar instead
            // ignore: sort_child_properties_last
            child: Text(
              _allEvents[index].duration,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            color: Colors.black54,
          ),
        ),
      ),
      onTap: () {},
    ));
  }
}
