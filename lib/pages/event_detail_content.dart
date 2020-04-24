import 'package:eventsapp/model/event.dart';
import 'package:eventsapp/model/guest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventDetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 100,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: Text(
              event.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42.0,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on , color: Colors.white,),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    event.location,
                    style:
                    TextStyle(color: Colors.white70, fontSize: 16.0 , fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 80.0,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text("GUESTS", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17.0),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for(final guest in guests) Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipOval(
                    child: Image.asset(guest.imagePath , width: 90.0 , height: 90.0, fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: event.punchLine1 +" " , style: TextStyle(fontSize: 32.0 , color: Colors.orange , fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: event.punchLine2 , style: TextStyle(fontSize: 28.0 , color: Colors.black , fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          if(event.description.isNotEmpty) Padding(
            padding: const EdgeInsets.all(16),
            child: Text(event.description , style: TextStyle(color: Colors.black , fontSize: 20.0),),
          ),
          SizedBox(height: 15,),
          if(event.galleryImage != null && event.galleryImage.isNotEmpty) Padding(
            padding: const EdgeInsets.all(16),
            child: Text("GALLERY" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17.0)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for(final galleryImagePath in event.galleryImage) Container(
                  margin: const EdgeInsets.only(left: 16 , right: 16 , bottom: 32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(galleryImagePath , width: 190.0 , height: 190.0, fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
