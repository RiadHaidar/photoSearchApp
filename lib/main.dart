import 'package:flutter/material.dart';
import 'package:foodapp/category_meals_screen.dart';

import 'screens/categories_screen.dart';
import './models/dummy_data.dart';
import './models/meal.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
List <Meal> availableMeals = DUMMY_MEALS;
    
    
   final ThemeData theme = ThemeData(
        backgroundColor: Colors.transparent,
        fontFamily: 'Raleway',
        //  scaffoldBackgroundColor: Colors.amberAccent,
        // colorScheme: Theme.of(context).colorScheme.copyWith(

        //      ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ));
    return MaterialApp(
      theme: theme,
      home: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
            title: Text(
              'food App',
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          body: Container(
            //  margin: EdgeInsets.symmetric(vertical: 10),
            child: CategoriesScreen(),
            padding: const EdgeInsets.only(top: 40),

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green.withOpacity(0.7),
                  Colors.blue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    
    // initialRoute: '/',
     routes: {
   //    '/': (ctx)=> CategoriesScreen(),
       CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(availableMeals),
     }, 
    );
  }
}
