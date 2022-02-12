
import 'package:flutter/material.dart';
import './widgets/meal_item.dart';
import './models/meal.dart';
class CategoryMealsScreen extends StatelessWidget {
  // final String CategoyId;
  // final String CategoyTitle;

  // CategoryMealsScreen({
  //   required this.CategoyId,
  //   required this.CategoyTitle,
  // });

  List <Meal> Meals ;
  CategoryMealsScreen(this.Meals);
    static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
     final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'].toString();
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(itemBuilder: (ctx , index){
        return MealItem(id: Meals[index].id,
         imageURL: Meals[index].imageUrl,
          title: Meals[index].title, 
          affordability: Meals[index].affordability, 
          complexity: Meals[index].complexity,
           duration: Meals[index].duration);
      },
    itemCount: Meals.length,
    ),
    
    );
  }
}