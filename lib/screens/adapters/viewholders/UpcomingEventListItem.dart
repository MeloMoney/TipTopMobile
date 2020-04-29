import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpcomingEventListItem extends StatefulWidget {

  final int id;
  final IconData icon;
  final String title;
  final String name;
  final String address;

  UpcomingEventListItem({
    this.id,
    this.icon,
    this.title,
    this.name,
    this.address
  });

  @override
  _UpcomingEventListItemState createState() =>
    new _UpcomingEventListItemState();
}

class _UpcomingEventListItemState extends State<UpcomingEventListItem> {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {},
      child: Container(
        height: 75,
        margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
        decoration: new BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: new BorderRadius.all(const Radius.circular(16.0))
        ),
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(widget.icon, color: Colors.white)
              )
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      textAlign: TextAlign.justify,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        widget.address,
                        textAlign: TextAlign.justify,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                        ),
                      )
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.white
                    ),
                  ],
                )
              )
            )
          ],
        )
      ),
    );
  }
}
