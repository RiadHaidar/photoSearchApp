import 'package:flutter/material.dart';
import 'package:foodapp/category_meals_screen.dart';
import 'meal_item.dart';

class CategoryItem extends StatelessWidget {
 

  final String title;
  final String id;
  CategoryItem(this.title,this.id);


   void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id':id,
      'title':title,
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: ()=> selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Text(title, style: Theme.of(context).textTheme.headline6),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.greenAccent),
        ),
      ),
    );
  }
}
