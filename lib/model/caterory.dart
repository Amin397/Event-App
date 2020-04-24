import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category(this.categoryId, this.name, this.icon);

}

   final allCategory = Category(0, "All", Icons.search);
   final musicCategory = Category(1, "Music", Icons.music_note);
   final meetUpCategory = Category(2, "Meetup", Icons.location_on);
   final golfCategory = Category(3, "Golf", Icons.golf_course);
   final birthDayCategory = Category(4, "BirthDay", Icons.cake);

   final categories =[
    allCategory,
    musicCategory,
    meetUpCategory,
    golfCategory,
    birthDayCategory,
   ];
