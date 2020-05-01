import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melodyapp/utils/HexColor.dart';

class HintListItem extends StatefulWidget {
  final int id;
  final IconData icon;
  final String title;
  final String description;

  HintListItem({this.id, this.icon, this.title, this.description});

  @override
  _HintListItemState createState() => new _HintListItemState();
}

class _HintListItemState extends State<HintListItem> {
  @override
  Widget build(BuildContext context) {
//    return new Container(
//      margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
//      child: Container(
//        margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
//        decoration: new BoxDecoration(
//          color: Colors.white,
//          borderRadius: new BorderRadius.only(
//            topLeft: const Radius.circular(16.0),
//            topRight: const Radius.circular(16.0),
//            bottomLeft: const Radius.circular(16.0),
//            bottomRight: const Radius.circular(16.0)
//            )
//        ),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          mainAxisSize: MainAxisSize.max,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Expanded(child: Icon(widget.icon, color: Colors.blueAccent)),
//            Expanded(child: Center(child: Text(widget.title, style: TextStyle(color: Colors.black87)))),
//            Expanded(child: Center(child: Text(widget.description, style: TextStyle(color: Colors.black87)))),
//          ],
//        ),
//      ),
//    );

  return Container(
    width: MediaQuery.of(context).size.width * 1,
    color: HexColor("#d4dae5"),
    child: new Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Colors.blueAccent
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0)
        ),
        color: Colors.white
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: new Icon(
                widget.icon,
                size: 32,
                color: Colors.black87,
              ),
            ),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 12.0),
              child: Text(
                widget.description,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.normal
                )
              ),
            ),

        ])
      )
    ),
  );
  }
}
