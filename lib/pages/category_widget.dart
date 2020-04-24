import 'package:eventsapp/model/caterory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class CategoryWidget extends StatelessWidget {

  final Category category;

  const CategoryWidget({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;

    return GestureDetector(
      onTap: (){
        if(!isSelected){
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 9 , vertical: 12),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.white : Color(0x99ffffff) , width: 3),
          borderRadius: BorderRadius.all(Radius.circular(21)),
          color: isSelected ? Colors.white : Colors.deepOrange,
          boxShadow: [BoxShadow(
            color: Colors.black45,
            blurRadius: 5,
            offset: Offset(0.0,5.0),
          )]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.icon,
              color: isSelected ? Theme.of(context).primaryColor : Colors.white,
              size: 40,
            ),
            SizedBox(height: 10,),
            Text(category.name , style: TextStyle(color: isSelected ? Theme.of(context).primaryColor : Colors.white , fontSize: 18.0, fontWeight: FontWeight.bold), )
          ],
        ),
      ),
    );
  }
}
