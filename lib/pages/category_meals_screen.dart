import 'package:flutter/material.dart';
class CategoryMealsScreen extends StatelessWidget {
  /*
   * final String categoryTitle,categoryId;
  
  const CategoryMealsScreen({Key key, this.categoryTitle, this.categoryId}) : super(key: key);
   */
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'];
     final categoryId = routeArgs['id'];
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text(categoryTitle),),
        body: Container(
          child:Text('The Recipes for category')
        ),
      ),
    );
  }
}