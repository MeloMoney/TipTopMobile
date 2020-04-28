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
  _UpcomingEventListItemState createState() => new _UpcomingEventListItemState();
}

class _UpcomingEventListItemState extends State<UpcomingEventListItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 100,
      margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Text(widget.title),
    );
  }
}
