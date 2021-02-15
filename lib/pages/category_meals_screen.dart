import 'package:Meal/data/dummy_data.dart';
import 'package:Meal/widget/meal_item.dart';
import 'package:flutter/material.dart';
class CategoryMealsScreen extends StatelessWidget {
  /*
   * final String categoryTitle,categoryId;
  
  const CategoryMealsScreen({Key key, this.categoryTitle, this.categoryId}) : super(key: key);
   */
  static const routeName =  '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal){ return meal.categories.contains(categoryId);}).toList();
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text(categoryTitle),),
        body: Container(
          child:ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder:(context,index){
                   return MealItem(id:categoryMeals[index].id,title:categoryMeals[index].title, affordability: categoryMeals[index].affordability, duration: categoryMeals[index].duration, complexity: categoryMeals[index].complexity, imageUrl: categoryMeals[index].imageUrl,);
          } )
        ),
      ),
    );
  }
}