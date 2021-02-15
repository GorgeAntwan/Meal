import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final String title,id;
  final Color color;

  const CategoryItem( this.title, this.id, this.color) ;

    
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: (){
             Navigator.of(context).pushNamed( '/category-meals',arguments: {'id':id,'title':title});
          },
          splashColor: Theme.of(context).primaryColor,
          borderRadius:BorderRadius.circular(15),

          child: Container(
          padding: EdgeInsets.all(15),

          // ignore: deprecated_member_use
          child: Text(title,style: Theme.of(context).textTheme.title,),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color
             ],
             begin: Alignment.topLeft,
             end: Alignment.bottomRight
            
            ),
            borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),
    );
  }
}