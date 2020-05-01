import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melodyapp/screens/adapters/models/Hint.dart';
import 'package:melodyapp/screens/adapters/models/NearEvent.dart';
import 'package:melodyapp/screens/adapters/models/UpcomingEvent.dart';
import 'package:melodyapp/screens/adapters/viewholders/HintListItem.dart';
import 'package:melodyapp/screens/adapters/viewholders/NearEventListItem.dart';
import 'package:melodyapp/screens/adapters/viewholders/UpcomingEventListItem.dart';
import 'package:melodyapp/utils/HexColor.dart';

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
      backgroundColor: HexColor("#d4dae5"),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: getBannerPlain()),
                SliverToBoxAdapter(child: getNearEventsList()),
                SliverToBoxAdapter(child: getRoundedHeader()),
                SliverToBoxAdapter(child: getHintList(context)),
                SliverToBoxAdapter(child: getRoundedUpcomingTop()),
                getSliverUpcomingEventsList(UpcomingEvent.paymentMockData),
                SliverToBoxAdapter(child: getRoundedUpcomingBottom()),
                SliverToBoxAdapter(child: getLayoutCreateYourEvent()),
                SliverToBoxAdapter(child: Container(height: 16))
              ],
            ),
          ],
        )
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 2.0,
      color: Colors.blueAccent
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(16.0)
    ),
  );
}

Widget getBannerPlain() {
  return Container(
    height: 150.0,
    color: HexColor("#f6f8ff"),
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
    color: HexColor("#f6f8ff"),
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

Widget getRoundedHeader() {
  return Container(
    height: 50,
    decoration: new BoxDecoration(
      color: HexColor("#f6f8ff"),
      borderRadius: new BorderRadius.only(bottomLeft: const Radius.circular(90))
    ),
    child: Center(
      child: Text("Find an event by category",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold
        )
      )
    ),
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

Widget getHintList(BuildContext context) {
  return Container(
    height: 200.0,
    width: MediaQuery.of(context).size.width * 0.65,
    child: CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: <Widget>[mapSliverHintList(Hint.mockHintData)],
    ),
  );
}

Widget mapSliverHintList(List<Hint> events) {
  var listOfSlivers = List<Widget>();
  events.forEach((f) => listOfSlivers.add(
    HintListItem(
      id: f.id,
      icon: f.icon,
      title: f.title,
      description: f.description
    )
  ));

  return SliverList(
    delegate: SliverChildListDelegate(listOfSlivers),
  );
}

Widget getRoundedUpcomingTop() {
  return Container(
    height: 50,
    decoration: new BoxDecoration(
      color: HexColor("#f6f8ff"),
      borderRadius: new BorderRadius.only(topLeft: const Radius.circular(90))
    ),
    child: Center(
      child: Text(
        "Upcoming Events",
        style: TextStyle(
          color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold
        ),
      )
    ),
  );
}

Widget getRoundedUpcomingBottom() {
  return Container(
    height: 50,
    decoration: new BoxDecoration(
      color: HexColor("#f6f8ff"),
      borderRadius: new BorderRadius.only(bottomLeft: const Radius.circular(90))
    ),
  );
}

Widget getLayoutCreateYourEvent() {
  return Container(
    height: 80,
    margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
    decoration: myBoxDecoration(),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Didn't find the event",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text("you were searching for?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text("Create your own!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 0),
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.blueAccent,
              size: 42,
            ),
          ),
        )
      ],
    ),
  );
}