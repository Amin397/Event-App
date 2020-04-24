import 'package:eventsapp/app_state.dart';
import 'package:eventsapp/events_details_page.dart';
import 'package:eventsapp/pages/category_widget.dart';
import 'package:eventsapp/pages/event_widgets.dart';
import 'package:eventsapp/pages/home_page_background.dart';
import 'package:eventsapp/model/caterory.dart';
import 'package:eventsapp/model/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
              screenHeight: MediaQuery
                  .of(context)
                  .size
                  .height,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 56.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'LOCAL EVENTS',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.person_outline,
                              size: 35, color: Colors.white.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "What's Up",
                      style: TextStyle(
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Consumer<AppState>(
                      builder: (context, appState, _) =>
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                for (final category in categories)
                                  CategoryWidget(
                                    category: category,
                                  )
                              ],
                            ),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Consumer<AppState>(
                      builder: (context, appState, _) =>
                          Column(
                            children: <Widget>[
                              for (final event in events.where((e) =>
                                  e.categoryId
                                      .contains(appState.selectedCategoryId)))
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) => EventsDetailsPage(event: event)));
                                    },
                                    child: EventWidget(
                                      event: event,
                                    ))
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
