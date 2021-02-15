import 'package:Meal/data/dummy_data.dart';
import 'package:Meal/widget/category_item.dart';
import 'package:flutter/material.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title:Text('DeliMeal')
          ),

          body: Container(

        child: GridView.builder(
          itemCount: DUMMY_CATEGORIES.length,
          itemBuilder: (BuildContext context, int index) { 
          return  CategoryItem(DUMMY_CATEGORIES.toList()[index].title,DUMMY_CATEGORIES.toList()[index].id,DUMMY_CATEGORIES.toList()[index].color,);
            },
          padding: EdgeInsets.all(25),
           
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20

        ),
        
         ),
      ),
    );
  }
}