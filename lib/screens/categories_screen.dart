import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';

import '../widgets/category_item.dart';
import '../models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
          padding: const EdgeInsets.all(25.0),
        children: DUMMY_CATEGORIES.map(
              (catData) => CategoryItem(catData.title, catData.id),
            )
            .toList(),
      
    );
  }
}


/*GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: 20.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 2.0,
            maxCrossAxisExtent: 200.0,
          ),
          children: 
            DUMMY_CATEGORIES.map(
              (catData) => CategoryItem(),
            )
            .toList(),
          
        ),*/



        /* Scaffold(
      extendBodyBehindAppBar: true,
      //  backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //r   foregroundColor: Colors.transparent,
        title: Text('Food App'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff072227),
              Color(0xffAEFEFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: 
      ),
    );*/