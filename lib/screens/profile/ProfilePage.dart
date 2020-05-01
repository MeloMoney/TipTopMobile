import 'package:flutter/material.dart';
import 'package:melodyapp/utils/HexColor.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      backgroundColor: HexColor("#d4dae5"),
      body: SafeArea(
        child: Column(
         children: <Widget>[
          Container(
            height: 275,
            color: HexColor("#f6f8ff"),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: CircleAvatar(
                              radius: 42.0,
                              backgroundImage: NetworkImage(
                                  "https://moonvillageassociation.org/wp-content/uploads/2018/06/default-profile-picture1.jpg"),
                              backgroundColor: Colors.transparent,
                            )),
                        Container(
                          padding: EdgeInsets.only(left: 16, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Brett Nelson",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Text(
                                "Guitarist",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "https://melomoney.com/id25129431",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blueAccent),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 0, left: 16, right: 16),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing "
                            "and typesetting industry. Lorem Ipsum has been the "
                            "industry's standard dummy text ever since the 1500s, "
                            "when an unknown printer took a galley of type and "
                            "scrambled it to make a type specimen book",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14),
                        )
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              onPressed: null,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  color: Colors.blueAccent,
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            MaterialButton(
                              onPressed: null,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  color: Colors.blueAccent,
                                  child: Text("Send message",
                                      style: TextStyle(color: Colors.white))),
                            ),
                            MaterialButton(
                              onPressed: null,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  color: Colors.blueAccent,
                                  child: Text("Donate",
                                      style: TextStyle(color: Colors.white))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          getRoundedHeader()
        ],
      )),
    );
  }
}

Widget getRoundedHeader() {
  return Container(
    height: 50,
    decoration: new BoxDecoration(
      color: HexColor("#f6f8ff"),
      borderRadius: new BorderRadius.only(bottomRight: const Radius.circular(90))
    ),
    child: Center(
      child: Container(
        padding: EdgeInsets.only(top: 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Events: 16",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal)),
            Text("Followers: 1083",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    ),
  );
}
