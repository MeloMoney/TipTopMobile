import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyapp/screens/adapters/models/NearEvent.dart';
import 'package:melodyapp/screens/adapters/models/UpcomingEvent.dart';
import 'package:melodyapp/screens/adapters/viewholders/NearEventListItem.dart';
import 'package:melodyapp/screens/adapters/viewholders/UpcomingEventListItem.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => new _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.music_note,
              color: Colors.white,
            ),
            Text(
              "MeloMoney",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
      ),
      backgroundColor: Colors.white60,
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(child: getBannerPlain()),
              SliverToBoxAdapter(child: getNearEventsList()),
              SliverToBoxAdapter(child: getMapBanner()),
              SliverToBoxAdapter(child: getTextViewUpcomingEvents()),
              getSliverUpcomingEventsList(UpcomingEvent.paymentMockData),
            ],
          ),
        ],
      )),
    );
  }
}

Widget getBannerPlain() {
  return Container(
    height: 150.0,
    child: new Container(
      margin: EdgeInsets.all(16.0),
      decoration: new BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: new BorderRadius.all(const Radius.circular(16.0))
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("7 Independent musicians",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                      Text("playing near to you",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                    ]),
                  ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 48, 0),
                  child: Center(
                    child: new Icon(
                      Icons.music_note,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
          ],
        )
      )
    ),
  );
}

Widget getNearEventsList() {
  return Container(
    height: 125.0,
    child: CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: <Widget>[mapSliverNearEventsList(NearEvent.mockNearEventsData)],
    ),
  );
}

Widget mapSliverNearEventsList(List<NearEvent> events) {
  var listOfSlivers = List<Widget>();
  events.forEach((f) => listOfSlivers
      .add(NearEventListItem(id: f.id, icon: f.icon, title: f.title)));

  return SliverList(
    delegate: SliverChildListDelegate(listOfSlivers),
  );
}

Widget getSliverUpcomingEventsList(List<UpcomingEvent> events) {
  var listOfSlivers = List<Widget>();

  events.forEach((f) => listOfSlivers.add(UpcomingEventListItem(
        id: f.id,
        icon: f.icon,
        title: f.title,
        name: f.name,
        address: f.address,
      )));

  return SliverList(
    delegate: SliverChildListDelegate(listOfSlivers),
  );
}

Widget getMapBanner() {
  return Container(
    height: 250.0,
    child: new Container(
        margin: EdgeInsets.all(16.0),
        decoration: new BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: new BorderRadius.all(const Radius.circular(16.0))),
        child: Container(
            child: Center(
          child: Text(
            "Imagine the Map",
            style: TextStyle(color: Colors.white),
          ),
        ))),
  );
}

Widget getTextViewUpcomingEvents() {
  return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        "Upcoming Events",
        style: TextStyle(
            color: Colors.black87, fontSize: 28, fontWeight: FontWeight.bold),
      ));
}
