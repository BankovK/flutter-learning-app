import 'package:flutter/material.dart';
import 'package:flutter_app/trips_app/shared/screenTitle.dart';
import 'package:flutter_app/trips_app/shared/tripList.dart';

class TripsHome extends StatefulWidget {
  @override
  _TripsHomeState createState() => _TripsHomeState();
}

class _TripsHomeState extends State<TripsHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"), 
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(text: 'Trips'),
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        )
      )
    );
  }
}

