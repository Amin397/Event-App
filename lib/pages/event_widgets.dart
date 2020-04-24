import 'package:eventsapp/model/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  const EventWidget({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              child: Image.asset(
                event.imagePath,
                height: 160,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0 , left: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          event.title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FittedBox(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.location_on),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                event.location,
                                style:
                                    TextStyle(color: Colors.black, fontSize: 18.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      event.duration.toUpperCase(),
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
