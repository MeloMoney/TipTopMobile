import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NearEventListItem extends StatefulWidget {
  final int id;
  final IconData icon;
  final String title;

  NearEventListItem({this.id, this.icon, this.title});

  @override
  _NearEventListItemState createState() => new _NearEventListItemState();
}

class _NearEventListItemState extends State<NearEventListItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 100,
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(24.0),
                topRight: const Radius.circular(0.0),
                bottomLeft: const Radius.circular(0.0),
                bottomRight: const Radius.circular(24.0)
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: Center(child: Text(widget.title, style: TextStyle(color: Colors.white),),)),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 35,
                      height: 35,
                      decoration: new BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(45.0),
                        )
                      )
                    ),
                  Padding(padding: EdgeInsets.all(8.0), child: Icon(widget.icon, color: Colors.white))
                ]),
              )
            ],
          ),
        ));
  }
}
