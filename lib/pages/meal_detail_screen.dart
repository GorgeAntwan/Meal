import 'package:flutter/material.dart';
class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key key}) : super(key: key);
  static const routName='/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mailId = ModalRoute.of(context).settings.arguments as String;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title:   Text(mailId),
        ),
        body: Container(child:Text(mailId))
      
      ),
    );
  }
}